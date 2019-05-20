describe Accredible::SSO do
  let(:sso) { Accredible::SSO }

  it "should return sso link" do
    response = sso.generate_recipient_link('1234', 'example@example.com', true, '123')

    expect(response).to eq("Stubbed Request")
  end
end
