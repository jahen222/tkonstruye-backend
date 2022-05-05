'use strict';

/**
 * A set of functions called "actions" for `helpers`
 */

module.exports = {
  async setSubscriptionToUser(ctx) {
    let user = ctx.state.user
    const subscriptionId = ctx.request.body.subscriptionId
    const subscription = await strapi.query('subscriptions').findOne({ id: subscriptionId })

    if (user.balance >= subscription.price) {
      const delta = user.balance - subscription.price
      user = await strapi.query('user', 'users-permissions').update(
        { id: user.id },
        { balance: delta, subscription: subscriptionId },
      )

      return { users_permissions_user: user }

    }
    else {
      return ctx.throw(400, 'Sin saldo suficiente.')
    }
  },
};
