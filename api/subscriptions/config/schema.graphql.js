module.exports = {
  definition: `
    type setSubscriptionToUser {
      users_permissions_user: UsersPermissionsUser
    }
    type setPaymentSubscriptionWithFlow {
      redirect: String
    }
  `,
  mutation: `
    setsubscriptiontouser(userId: ID!, subscriptionId: ID!): setSubscriptionToUser
    setpaymentsubscriptionwithflow(
      userId: ID!
      subscriptionId: ID!
    ) : setPaymentSubscriptionWithFlow
  `,
  type: {
    setSubscriptionToUser: {
      _description: 'The setsubscriptiontouser type description',
      name: 'The name of the setsubscriptiontouser',
      description: 'The description of the setsubscriptiontouser',
    },
    setPaymentSubscriptionWithFlow: {
      _description: 'The setpaymentsubscriptionwithflow type description',
      name: 'The name of the setpaymentsubscriptionwithflow',
      description: 'The description of the setpaymentsubscriptionwithflow',
    }
  },
  resolver: {
    Mutation: {
      setsubscriptiontouser: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwnerMutation'],
        resolver: 'application::subscriptions.subscriptions.setSubscriptionToUser'
      },
      setpaymentsubscriptionwithflow: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwnerMutation'],
        resolver: 'application::subscriptions.subscriptions.setPaymentSubscriptionWithFlow'
      }
    }
  }
};
