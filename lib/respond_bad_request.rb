module Rack
  class RespondBadRequest

    def initialize(app)
      @app = app
    end
    
    # While parsing params, respond 400 Bad Request
    # When JSON data is malformed
    #
    def call env  
      begin
        status, headers, body = @app.call(env)
        [status, headers, body]
      rescue MultiJson::DecodeError => e
        [400, {}, [e.message]]
      end
    end

  end

end
