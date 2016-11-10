describe Accredible::Group do 
  let(:group) { Accredible::Group }

  it "should return a list of groups when view_all is called" do
    groups = group.view_all

    expect(groups).to eq("Stubbed Request")
  end

  it "should delete a group" do
    temp = group.delete("1234")

    expect(temp).to eq("Stubbed Request")
  end
  
  it "#api_end_point should return the default end point" do
    end_point = group.api_end_point

    expect(end_point).to include("accredible")
    expect(end_point).to include("issuer")
    expect(end_point).to include("group")
  end

  it "#view_all_end_point should return the view all end point" do
    end_point = group.view_all_end_point

    expect(end_point).to include("accredible")
    expect(end_point).to include("group")
    expect(end_point).to include("issuer")
  end

end