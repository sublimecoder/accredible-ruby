describe Accredible::Credential do 
  let(:credential) { Accredible::Credential }

  it "should initilize with the credential end point" do 
    cred = credential.new

    expect(cred.url).to include("credential")
    expect(cred.url).to include("accredible")
  end

  it "should return a list of credentials when view_all is called" do
    credential.view_all("1234", "example@example.com")
  end
end
