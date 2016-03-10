module Softlayer
  class Ticket
    class Attachment
      module Virtual
        autoload :Guest, 'softlayer/ticket/attachment/virtual/guest'
      end
    end
  end
end
