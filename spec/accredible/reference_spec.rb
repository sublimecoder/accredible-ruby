describe Accredible::Reference do 
  let(:reference) { Accredible::Reference }

  it "should return reference when view is called" do
    references = reference.view(credential_id: "123", reference_id: "456")

    expect(references).to eq("Stubbed Request")
  end

  it "should return reference when view is called" do
    references = reference.create(credential_id: "123", reference: reference_details)

    expect(references).to eq("Stubbed Request")
  end

  it "should update an reference when update is called" do
    response = reference.update(credential_id: "123", reference_id: "456")

    expect(response).to eq("Stubbed Request")
  end

  it "should delete an reference" do
    response = reference.delete(credential_id:"1234", reference_id: "567")

    expect(response).to eq("Stubbed Request")
  end

  it "#api_end_point should return the default end point" do
    end_point = reference.api_end_point("123", "456")

    expect(end_point).to include("accredible")
    expect(end_point).to include("references")
  end

end
