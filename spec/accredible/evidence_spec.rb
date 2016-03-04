describe Accredible::Evidence do 
  let(:evidence) { Accredible::Evidence }

  it "should return evidence when view is called" do
    evidences = evidence.view(credential_id: "123", evidence_id: "456")

    expect(evidences).to eq("Stubbed Request")
  end

  it "should return evidence when view is called" do
    evidences = evidence.create(credential_id: "123", evidence: evidence_details)

    expect(evidences).to eq("Stubbed Request")
  end

  it "should update an evidence when update is called" do
    response = evidence.update(credential_id: "123", evidence_id: "456")

    expect(response).to eq("Stubbed Request")
  end

  it "should delete an evidence" do
    response = evidence.delete(credential_id:"1234", evidence_id: "567")

    expect(response).to eq("Stubbed Request")
  end

  it "#api_end_point should return the default end point" do
    end_point = evidence.api_end_point("123", "456")

    expect(end_point).to include("accredible")
    expect(end_point).to include("evidence_items")
  end

end
