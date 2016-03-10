module Softlayer
  class Ticket
    class Attachment
      module Scheduled
        autoload :Action, 'softlayer/ticket/attachment/scheduled/action'
      end
    end
  end
end
