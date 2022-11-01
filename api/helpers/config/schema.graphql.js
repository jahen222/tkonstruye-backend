module.exports = {
  definition: `
    type createUser2 {
      users_permissions_user: UsersPermissionsUser
    }
  `,
  mutation: `
    createuser2(
      username: String!
      email: String!
      password: String!
      phone: String!
      role: ID!
      balance: Float!
    ): createUser2
  `,
  type: {
    createUser2: {
      _description: 'The createuser2 type description', // Set the description for the type itself.
      name: 'The name of the createuser2',
      description: 'The description of the createuser2',
    }
  },
  resolver: {
    Mutation: {
      createuser2: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwner'],
        resolver: 'application::helpers.helpers.createUser2'
      }
    }
  }
};
