describe Accredible::Credential do 
  let(:credential) { Accredible::Credential }

  it "should return a list of credentials when view_all is called" do
    credentials = credential.view_all("1234", "example@example.com")

    expect(credentials).to eq("Stubbed Request")
  end

  it "should create a credential when create is called" do
    cred = credential.create(
      recipient: recipient_details,
      credential: credential_details)

    expect(cred).to eq("Stubbed Request")
  end

  it "should return a credential when view is called" do
    cred = credential.view("1234")

    expect(cred).to eq("Stubbed Request")
  end

  it "should return a credential when view is called" do
    cred = credential.update(achievement_id:"1234", credential: {name: "new credential name"})

    expect(cred).to eq("Stubbed Request")
  end

  it "should delete a credential" do
    cred = credential.delete("1234")

    expect(cred).to eq("Stubbed Request")
  end
  
  it "#api_end_point should return the default end point" do
    end_point = credential.api_end_point

    expect(end_point).to include("accredible")
    expect(end_point).to include("credentials")
  end

  it "#view_all_end_point should return the view all end point" do
    end_point = credential.view_all_end_point("123", "example@example.com")

    expect(end_point).to include("accredible")
    expect(end_point).to include("credentials?achievement_id=123&email=example@example.com")
  end

end
