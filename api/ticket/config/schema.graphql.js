module.exports = {
  resolver: {
    Mutation: {
      createTicket: {
        description: "Create Ticket",
        policies: [
          "isAuthenticated", 
          "isOwner"
        ],
      },
    },
  },
};
