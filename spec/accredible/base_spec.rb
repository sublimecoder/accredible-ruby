describe Accredible do
  it "should accept and API key" do
    Accredible.api_key = "some_key"

    expect(Accredible.api_key).to eq("some_key")
  end

  it "should return the api url" do
    Accredible.api_key = "some_key"

    expect(Accredible.api_url("credential")).to include("credential")
  end
end
