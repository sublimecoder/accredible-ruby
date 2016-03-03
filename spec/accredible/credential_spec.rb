describe Accredible::Credential do 
  let(:credential) { Accredible::Credential }

  it "should return a list of credentials when view_all is called" do
    credentials = credential.view_all("1234", "example@example.com")

    expect(credentials).to eq("Stubbed Request")
  end

  it "should return a credential when view is called" do
    cred = credential.view("1234")

    expect(cred).to eq("Stubbed Request")
  end

  it "should delete a credential" do
    cred = credential.delete("1234")

    expect(cred).to eq("Stubbed Request")
  end

end
