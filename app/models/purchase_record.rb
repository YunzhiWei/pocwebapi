class PurchaseRecord
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: Integer
  field :source, type: String
  field :datetime, type: String
end
