class LoginRecord
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :id, type: Integer
  field :source, type: String
  field :datetime, type: DateTime
end
