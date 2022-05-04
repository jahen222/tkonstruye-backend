module.exports = {
  definition: `
    type setSubscriptionToUser {
      users_permissions_user: UsersPermissionsUser
    }
  `,
  mutation: `
    setsubscriptiontouser(userId: ID!, subscriptionId: ID!): setSubscriptionToUser
  `,
  type: {
    setSubscriptionToUser: {
      _description: 'The setsubscriptiontouser type description', // Set the description for the type itself.
      name: 'The name of the setsubscriptiontouser',
      description: 'The description of the setsubscriptiontouser',
    }
  },
  resolver: {
    Mutation: {
      setsubscriptiontouser: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwner'],
        resolver: 'application::helpers.helpers.setSubscriptionToUser'
      }
    }
  }
};
