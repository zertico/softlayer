module Softlayer
  class Ticket
    class Attachment
      module Assigned
        autoload :Agent, 'softlayer/ticket/attachment/assigned/agent'
      end
    end
  end
end
