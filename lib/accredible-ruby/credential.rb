module Accredible
  class Credential
    attr_reader :url

    def initialize
    end

    def self.view(id = nil)
      uri = Credential.api_end_point(id)
      Accredible.request(uri) 
    end

    def create

    end

    def self.update

    end

    def self.delete

    end

    def self.view_all(achievement_id, email)
      uri = Credential.view_all_end_point(achievement_id, email)
      Accredible.request(uri)
    end

    def self.api_end_point(id = nil)
      @url = Accredible.api_url("credentials/#{id}")
    end

    def self.view_all_end_point(achievement_id, email)
      @view_all_url = Accredible.api_url("credentials?achievement_id=#{achievement_id}&email=#{email}")
    end

    def build_values(value_hash)

      values = {
        credential: {
          recipient: {
            name: "John Doe",
            email: "person@example.com"
          },
          name: "Credential Name",
          cohort_name: "course1234",
          description: "A detailed description of what the credential is for",
          complete: true,
          issued_on: "2014-06-14",
          expired_on: "",
          course_link: "",
          allow_supplemental_evidence: true,
          allow_supplemental_references: true,
          learning_outcomes: [],
          evidence_items: [],
          references: [],
          custom_attributes: "{}"
        }
      }
    end
  end
end
