module Accredible
  class Util
    def self.build_create_credential_params(recipient={}, credential={}, evidence = {}, references = {}, group)
      credential[:recipient] = recipient
      credential[:evidence_items] = evidence unless evidence.empty?
      credential[:references] = references unless references.empty?
      credential[:group] = group
      { credential: credential }.to_json
    end

    def self.build_update_credential_params(credential)
      { credential: credential }.to_json
    end

    def self.build_create_group_params(group,design_id)
      group[:design_id] = design_id
      {group: group}.to_json
    end
  end
end
