class Authority
  include Mongoid::Document
  field :id, type: Integer
  field :name, type: String
  field :subId, type: Integer
  field :code, type: Integer
  field :description, type: String
  field :authority_groupId, type: Integer
end
