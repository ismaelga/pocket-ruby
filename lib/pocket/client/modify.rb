module Pocket
  class Client
    # http://getpocket.com/developer/docs/v3/modify
    module Modify
      # required params: actions, consumer_key, access_token
      def modify actions
        connection.post("/v3/send", {actions: actions})
      end
    end
  end
end
