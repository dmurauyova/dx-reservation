class Guest
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :status, type: Mongoid::Boolean
end
