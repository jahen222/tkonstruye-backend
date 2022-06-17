module.exports = {
  definition: `
    type setPaymentProposalWithFlow {
      redirect: String
    }
  `,
  mutation: `
    setpaymentproposalwithflow(
      userId: ID!
      price: Int!
      coverLetter: String!
      jobDetail: String
      file: ID
      ticketId: ID!
    ) : setPaymentProposalWithFlow
  `,
  type: {
    setPaymentProposalWithFlow: {
      _description: 'The setpaymenttoflow type description',
      name: 'The name of the setpaymenttoflow',
      description: 'The description of the setpaymenttoflow',
    }
  },
  resolver: {
    Mutation: {
      setpaymentproposalwithflow: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwnerMutation'],
        resolver: 'application::payments.payments.setPaymentProposalWithFlow'
      }
    }
  }
};
