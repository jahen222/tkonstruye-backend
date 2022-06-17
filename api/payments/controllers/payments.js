'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/concepts/controllers.html#core-controllers)
 * to customize this controller
 */
const { isDraft } = require('strapi-utils').contentTypes;

module.exports = {
  async setPaymentProposalWithFlow(ctx) {
    const user = ctx.state.user
    const FlowApi = require("flowcl-node-api-client");
    const { config } = require("../../../lib/flow_config");
    const optional = {
      "rut": user.rut ? user.rut : "9999999-9",
    };
    const params = {
      "commerceOrder": Math.floor(Math.random() * (2000 - 1100 + 1)) + 1100,
      "subject": "Pago directo de propuesta",
      "currency": "CLP",
      "amount": ctx.request.body.price,
      "email": user.email,
      "paymentMethod": 9,
      "urlConfirmation": config.baseBackURL + "/payment_confirm",
      "urlReturn": config.baseBackURL + "/result",
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
        "coverLetter": ctx.request.body.coverLetter,
        "jobDetail": ctx.request.body.jobDetail,
        "file": ctx.request.body.file,
        "ticket": ctx.request.body.ticketId,
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
  async getPaymentProposalWithFlow(ctx) {
    const payment = await strapi.query('payments').findOne({ token: ctx.request.body.token })
    const proposal = {
      ticket: payment.ticket.id,
      users_permissions_user: payment.users_permissions_user.id,
      coverLetter: payment.coverLetter,
      jobDetail: payment.jobDetail,
      file: payment.file
    }
    const validData = await strapi.entityValidator.validateEntityCreation(
      strapi.models.proposal,
      proposal,
      { isDraft: isDraft(proposal, strapi.models.proposal) }
    );
    await strapi.query('payments').update({ id: payment.id }, { status: "payed" })
    const data = await strapi.query('proposal').create(validData);

    return ctx.redirect(process.env.VUE_APP_URL + '/finishpay?q=' + data.id);
  },
  async setPaymentBalanceWithFlow(ctx) {
    const user = ctx.state.user
    const FlowApi = require("flowcl-node-api-client");
    const { config } = require("../../../lib/flow_config");
    const optional = {
      "rut": user.rut ? user.rut : "9999999-9",
    };
    const params = {
      "commerceOrder": Math.floor(Math.random() * (2000 - 1100 + 1)) + 1100,
      "subject": "Pago directo de balance",
      "currency": "CLP",
      "amount": ctx.request.body.balance,
      "email": user.email,
      "paymentMethod": 9,
      "urlConfirmation": config.baseBackURL + "/payment_confirm",
      "urlReturn": config.baseBackURL + "/result_balance",
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
  async getPaymentBalanceWithFlow(ctx) {
    const payment = await strapi.query('payments').findOne({ token: ctx.request.body.token })
    await strapi.query('payments').update({ id: payment.id }, { status: "payed" })

    const user = await strapi.query('user', 'users-permissions').update(
      { id: payment.users_permissions_user.id },
      {
        balance: payment.users_permissions_user.balance + payment.amount
      },
    )

    return ctx.redirect(process.env.VUE_APP_URL + '/finishpaybalance');
  },
};
