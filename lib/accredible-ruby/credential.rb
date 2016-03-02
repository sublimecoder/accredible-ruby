module Accredible
  class Credential
    attr_reader :url

    def initialize
      @url = Credential.api_end_point 
    end

    def self.view

    end

    def self.create

    end

    def self.update

    end

    def self.delete

    end

    def self.view_all(achievement_id, email)
      uri = Credential.view_all_end_point(achievement_id, email)
      Accredible.request(uri)
    end

    def self.api_end_point
      @url = Accredible.api_url("credential")
    end

    def self.view_all_end_point(achievement_id, email)
      @view_all_url = Accredible.api_url("credentials?achievement_id=#{achievement_id}&email=#{email}")
    end

    def build_values(value_hash)

      values = {
"credential": {
  "recipient": {
    "name": "John Doe",
    "email": "person@example.com"
  },
  "name": "Credential Name",
  "cohort_name": "course1234",
  "description": "A detailed description of what the credential is for",
  "issued_on": "2014-06-14",
  "evidence_items": [
    {
      "description": "Report card including all grades",
      "url": "http://www.awesomelearningexample.com/johndoe/reportcard",
      "category": "url"
    },
    {
      "description": "Final essay",
      "file": "https://s3.amazonaws.com/accredible_api_evidence_items/files/12/original/open-uri20140316-15266-1m3by6h.jpeg",
      "category": "file"
    }
  ],
  "references": [
    {
      "description": "John worked hard on this course and provided exemplary understanding of the core concepts",
      "referee": {
        "name": "Jane Doe",
        "email": "person2@example.com",
        "avatar": "https://placehold.it/100x100"
      },
      "relationship": "managed"
    }
  ],
  "custom_attributes": "{\"custom_variable\": \"some value\", \"dob\": \"29th Jan 1970\"}"
}
}
    end
  end
end
