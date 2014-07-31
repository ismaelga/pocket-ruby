module Pocket
  class Client
    # http://getpocket.com/developer/docs/v3/retrieve
    module Retrieve
      # required params: consumer_key, access_token
      def retrieve params=[]
        connection.post("/v3/get", params)
      end
    end
  end
end
