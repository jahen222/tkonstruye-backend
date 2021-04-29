"use strict";

const handleErrors = (ctx, err = undefined, type) => {
  throw strapi.errors[type](err);
};

module.exports = async (ctx, next) => {
/*   console.log(ctx.state.user.id);
  console.log(ctx.request.body.users_permissions_user); */

  if (ctx.state.user.id == ctx.request.body.users_permissions_user) {
    
    return await next();
  }

  return handleErrors(ctx, undefined, 'forbidden');
};