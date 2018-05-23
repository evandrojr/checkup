module Checkup
    module Rest
      extend self
        def get(uri)
            HTTP::Client.get uri
        end
    end
end        