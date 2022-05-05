module.exports = {
  mutation: `
    createProposalMe(input: createProposalInput):  createProposalPayload
  `,
  resolver: {
    Mutation: {
      createProposalMe: {
        description: 'Return a single object',
        policies: ['plugins::users-permissions.isAuthenticated', 'isOwner'],
        resolver: 'application::proposal.proposal.createProposalMe'
      }
    }
  }
};
