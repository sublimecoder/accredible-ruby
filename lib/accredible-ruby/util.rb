module Accredible
  class Util
    def self.build_request_params(recipient={}, credential={}, evidence = {}, references = {})
      credential[:recipient] = recipient
      credential[:evidence_items] = evidence unless evidence.empty?
      credential[:references] = references unless references.empty?
      credential.to_json
    end
  end
end
