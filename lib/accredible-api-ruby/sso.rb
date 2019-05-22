module Accredible
  class SSO

    def self.generate_recipient_link(recipient_id, recipient_email, wallet_view, group_id, credential_id=nil, redirect_to=nil)
      params = {
        recipient_id:    recipient_id,
        recipient_email: recipient_email,
        wallet_view:     wallet_view,
        group_id:        group_id
      }
      params[:credential_id] = credential_id if !!credential_id
      params[:redirect_to]   = redirect_to   if !!redirect_to

      uri = SSO.api_end_point
      Accredible.request(uri, :post, params)
    end

    def self.api_end_point
      @url = Accredible.api_url("sso/generate_link")
    end
  end
end
