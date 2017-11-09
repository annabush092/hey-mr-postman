class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address

  has_many :emails
end
