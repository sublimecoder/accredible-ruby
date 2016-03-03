describe Accredible::Util do
  let(:util) { Accredible::Util }

  it "#build_request_params should take request params and build json" do
    recipient = recipient_details  
    credential = credential_details
    evidence = evidence_list
    references = reference_details
    request_json = util.build_request_params(recipeient: recipient, credential: credential, evidence: evidence, references: references)

    expect {JSON.parse(request_json)}.to_not raise_error
  end

end
