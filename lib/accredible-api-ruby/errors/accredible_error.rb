module Accredible
  class AccredibleError < StandardError
    attr_reader :message
    attr_reader :status
    attr_reader :body

    def initialize(message=nil, status=nil, body=nil)
      @message = message
      @status = status
      @body = body
    end

    def to_s
      status = "(Status #{@status}) " if @status.nil?
      "#{status}#{@message}"
    end
  end
end
