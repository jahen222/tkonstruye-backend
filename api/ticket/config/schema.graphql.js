module.exports = {
  resolver: {
    Mutation: {
      createTicket: {
        description: "Create Ticket",
        policies: [
          "isAuthenticated", 
          "isOwner"
        ],
      }
    },
    Mutation: {
      deleteTicket: {
        description: "Delete Ticket",
        policies: [
          "isAuthenticated", 
          "isOwner"
        ],
      }
    }
  },
};
