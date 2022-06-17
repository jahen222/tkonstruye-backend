module.exports = {
  definition: `
    type setPaymentProposalWithFlow {
      redirect: String
    }
    type setPaymentBalanceWithFlow {
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
    setpaymentbalancewithflow(
      userId: ID!
      balance: Int!
    ) : setPaymentBalanceWithFlow
  `,
  type: {
    setPaymentProposalWithFlow: {
      _description: 'The setpaymenttoflow type description',
      name: 'The name of the setpaymenttoflow',
      description: 'The description of the setpaymenttoflow',
    },
    setPaymentBalanceWithFlow: {
      _description: 'The setpaymentbalancewithflow type description',
      name: 'The name of the setpaymentbalancewithflow',
      description: 'The description of the setpaymentbalancewithflow',
    }
  },
  resolver: {
    Mutation: {
      setpaymentproposalwithflow: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwnerMutation'],
        resolver: 'application::payments.payments.setPaymentProposalWithFlow'
      },
      setpaymentbalancewithflow: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwnerMutation'],
        resolver: 'application::payments.payments.setPaymentBalanceWithFlow'
      }
    }
  }
};
