module CredentialHelper
  def recipient_details
    {name: "John Doe", 
     email: "example@example.com"}
  end

  def credential_details
    {name: "My Credential", 
     cohort_name: "cohort_123", 
     description: "description of credential"}
  end

  def evidence_list
    [{description: "Evidence of completion",
      url: "http://example.com/evidence",
      category: "url"},
      {description: "Evidence of completion 2",
       file: "https://s3.amazonaws.com/accredible_api_evidence_items/files/12/original/open-uri20140316-15266-1m3by6h.jpeg",
       category: "file"}]
  end

  def reference_details
    {description: "John worked hard", 
     relationship: "managed",
     referee: {name: "Jane Doe", 
               email: "jane@example.com",
               avatar: "https://placehold.it/100x100"}}
  end
end
