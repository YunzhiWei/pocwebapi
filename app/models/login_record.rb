class LoginRecord
  include Mongoid::Document
  field :id, type: Integer
  field :source, type: String
  field :datetime, type: DateTime
end
