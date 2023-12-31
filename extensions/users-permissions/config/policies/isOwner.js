"use strict";

const handleErrors = (ctx, err = undefined, type) => {
  throw strapi.errors[type](err);
};

module.exports = async (ctx, next) => {
  console.log(ctx.params)
  if (ctx.state.user.id == ctx.params.id) {

    return await next();
  }

  return handleErrors(ctx, undefined, 'forbidden');
};
