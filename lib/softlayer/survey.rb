module Softlayer
  class Survey < Softlayer::Entity
    SERVICE = 'SoftLayer_Survey'
    autoload :Answer, 'softlayer/survey/answer'
    autoload :Question, 'softlayer/survey/question'
    autoload :Response, 'softlayer/survey/response'
    autoload :Status, 'softlayer/survey/status'
    autoload :Type, 'softlayer/survey/type'
    attr_accessor :active
    attr_accessor :create_date
    attr_accessor :id
    attr_accessor :name
    attr_accessor :status_id
    attr_accessor :type_id
    attr_accessor :question_count
    attr_accessor :questions
    attr_accessor :status
    attr_accessor :type

    # type
    def self.get_active_survey_by_type(message)
      request(:get_active_survey_by_type, Softlayer::Survey, message)
    end

    def get_object
      request(:get_object, Softlayer::Survey)
    end

    def get_questions
      request(:get_questions, Array[Softlayer::Survey::Question])
    end

    def get_status
      request(:get_status, Softlayer::Survey::Status)
    end

    def get_type
      request(:get_type, Softlayer::Survey::Type)
    end

    # responses
    def take_survey(message)
      request(:take_survey, Boolean, message)
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :active, type: Integer
      property :create_date, type: DateTime
      property :id, type: Integer
      property :name, type: String
      property :status_id, type: Integer
      property :type_id, type: Integer
      property :question_count, type: BigDecimal
    end
  end
end
