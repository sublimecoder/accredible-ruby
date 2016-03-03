describe Accredible::Util do
  let(:util) { Accredible::Util }

  it "#build_create_credential_params should take request params and build json" do
    recipient = recipient_details  
    credential = credential_details
    evidence = evidence_list
    references = reference_details
    request_json = util.build_create_credential_params(recipeient: recipient, credential: credential, evidence: evidence, references: references)

    expect {JSON.parse(request_json)}.to_not raise_error
  end

  it "#build_update_credential_params should take request params and build json" do
   request_json = util.build_update_credential_params(name: "Changed Credential Name", completed: true)

    expect {JSON.parse(request_json)}.to_not raise_error
  end

end
