module Pocket
  class Client
    # http://getpocket.com/developer/docs/v3/add
    module Add
      # required params: url, consumer_key, access_token
      def add params
        connection.post("/v3/add", params)
      end
    end
  end
end
