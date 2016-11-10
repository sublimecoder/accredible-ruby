describe Accredible::Design do 
  let(:design) { Accredible::Design }

  it "should return a list of groups when view_all is called" do
    designs = design.view_all

    expect(designs).to eq("Stubbed Request")
  end

  it "#api_end_point should return the default end point" do
    end_point = design.view_all_end_point

    expect(end_point).to include("accredible")
    expect(end_point).to include("issuer")
    expect(end_point).to include("designs")
  end

end