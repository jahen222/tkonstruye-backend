'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/concepts/controllers.html#core-controllers)
 * to customize this controller
 */
const { isDraft } = require('strapi-utils').contentTypes;

module.exports = {
  async setSubscriptionToUser(ctx) {
    let user = ctx.state.user
    const subscriptionId = ctx.request.body.subscriptionId
    const subscription = await strapi.query('subscriptions').findOne({ id: subscriptionId })

    if (user.balance >= subscription.price) {
      const delta = user.balance - subscription.price

      user = await strapi.query('user', 'users-permissions').update(
        { id: user.id },
        {
          balance: delta,
          subscription: subscriptionId
        },
      )

      return { users_permissions_user: user }

    }
    else {
      return ctx.throw(400, 'Sin saldo suficiente.')
    }
  },
  async setPaymentSubscriptionWithFlow(ctx) {
    const FlowApi = require("flowcl-node-api-client");
    const { config } = require("../../../lib/flow_config");
    const user = ctx.state.user
    const subscriptionId = ctx.request.body.subscriptionId
    const subscription = await strapi.query('subscriptions').findOne({ id: subscriptionId })
    const optional = {
      "rut": user.rut ? user.rut : "9999999-9",
    };
    const params = {
      "commerceOrder": Math.floor(Math.random() * (2000 - 1100 + 1)) + 1100,
      "subject": "Pago directo de Subscripción",
      "currency": "CLP",
      "amount": subscription.price,
      "email": user.email,
      "paymentMethod": 9,
      "urlConfirmation": config.baseBackURL + "/payment_confirm",
      "urlReturn": config.baseBackURL + "/result_subscription",
    };
    const serviceName = "payment/create";
    try {
      const flowApi = new FlowApi(config);
      const response = await flowApi.send(serviceName, { ...params, ...optional }, "POST");
      const redirect = response.url + "?token=" + response.token;
      const payment = {
        "token": response.token,
        "users_permissions_user": user.id,
        "status": "not payed",
        "subscription": subscription.id,
        ...params
      }
      const validData = await strapi.entityValidator.validateEntityCreation(
        strapi.models.payments,
        payment,
        { isDraft: isDraft(payment, strapi.models.payments) }
      );
      await strapi.query('payments').create(validData);

      return { redirect: redirect }
    } catch (error) {

      return ctx.throw(500, error)
    }
  },
  async getPaymentSubscriptionWithFlow(ctx) {
    const payment = await strapi.query('payments').findOne({ token: ctx.request.body.token })
    await strapi.query('payments').update({ id: payment.id }, { status: "payed" })

    const user = await strapi.query('user', 'users-permissions').update(
      { id: payment.users_permissions_user.id },
      {
        subscription: payment.subscription.id
      },
    )

    return ctx.redirect(process.env.VUE_APP_URL + '/finishpaysubscription');
  },
};

