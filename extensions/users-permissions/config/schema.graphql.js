module.exports = {
  definition: `
    extend type UsersPermissionsMe {
      detail: UsersPermissionsUser
    }
  `,
  resolver: {
    UsersPermissionsMe: {
      detail: (detail) => detail,
    },
    Mutation: {
      updateUser: {
        description: "Update user",
        policies: [
          "plugins::users-permissions.isAuthenticated",
          "plugins::users-permissions.isOwner",
        ],
      },
    },
  },
};
