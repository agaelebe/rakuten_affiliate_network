module LinkshareAPI
  class Error < StandardError
    attr_reader :message, :code, :body

    def initialize(message = nil, code = nil, body = nil)
      @message = message
      @code    = code
      @body    = body
    end

    def to_s
      code_string = code.nil? ? "" : " (Code #{code})"
      "#{message}#{code_string}/n#{body}"
    end
  end
end
