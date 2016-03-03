module Accredible
  class Template

    def self.copy(source_id:, new_template_name:)
      uri = Template.copy_end_point
      params = {source_id: source_id, 
                new_template_name: new_template_name}.to_json
      Accredible.request(uri, :post, params)
    end

    def self.delete(template_id)
      uri =  Template.api_end_point(template_id)
      Accredible.request(uri, :delete)
    end

    def self.view_all
      uri = Template.view_all_end_point
      Accredible.request(uri)
    end

    def self.api_end_point(id = nil)
      Accredible.api_url("templates/#{id}")
    end

    def self.copy_end_point
      Accredible.api_url("templates/copy")
    end

    def self.view_all_end_point
      Accredible.api_url("templates")
    end
  end
end
