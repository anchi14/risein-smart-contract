function calculateCurrentState() private view returns (bool) {
    Proposal storage proposal = proposal_history[counter];

    uint256 approve = proposal.approve;
    uint256 reject = proposal.reject;
    uint256 pass = proposal.pass;

    return (approve * 2) > (reject * 2 + pass);
}
