class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :email, type: String
  field :description, type: String
  field :role, type: Integer
end
