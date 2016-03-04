describe Accredible::Template do 
  let(:template) { Accredible::Template }

  it "should return a list of templates when view_all is called" do
    templates = template.view_all

    expect(templates).to eq("Stubbed Request")
  end

  it "should delete a template" do
    temp = template.delete("1234")

    expect(temp).to eq("Stubbed Request")
  end
  
  it "#api_end_point should return the default end point" do
    end_point = template.api_end_point

    expect(end_point).to include("accredible")
    expect(end_point).to include("templates")
  end

  it "#view_all_end_point should return the view all end point" do
    end_point = template.view_all_end_point

    expect(end_point).to include("accredible")
    expect(end_point).to include("templates")
  end

end
