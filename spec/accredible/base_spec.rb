describe Accredible do
  it "should accept and API key" do
    Accredible.api_key = "some_key"

    expect(Accredible.api_key).to eq("some_key")
  end

  it "should return the api url" do
    Accredible.api_key = "some_key"

    expect(Accredible.api_url("credential")).to include("credential")
  end

  it "should return an error if no api key is set" do
    Accredible.api_key = nil
    expect {Accredible::Credential.view_all("123", "example@example.com")}.to raise_error(Accredible::AuthenticationError)
  end
end
