'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

const { parseMultipartData, sanitizeEntity } = require('strapi-utils');

module.exports = {
  async createProposalMe(ctx) {
    let entity;
    let user = ctx.state.user
    const ticketId = ctx.request.body.ticket
    const ticket = await strapi.query('ticket').findOne({ id: ticketId })

    if (user.balance >= ticket.subcategory.price) {
      let delta = 0;
      if (user.subscription) {
        const subscriptionId = user.subscription
        const subscription = await strapi.query('subscriptions').findOne({ id: subscriptionId })
        delta = user.balance - ticket.subcategory.price + (ticket.subcategory.price * subscription.discount / 100)
      }
      else {
        delta = user.balance - ticket.subcategory.price
      }
      user = await strapi.query('user', 'users-permissions').update(
        { id: user.id },
        { balance: delta },
      )
      if (ctx.is('multipart')) {
        const { data, files } = parseMultipartData(ctx);
        entity = await strapi.services.proposal.create(data, { files });
      } else {
        entity = await strapi.services.proposal.create(ctx.request.body);
      }
      return sanitizeEntity(entity, { model: strapi.models.restaurant });
    } else {
      return ctx.throw(400, 'Sin saldo suficiente.')
    }
  },
};
