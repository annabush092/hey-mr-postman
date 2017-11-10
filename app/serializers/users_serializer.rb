class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address

  has_many :sent_emails
  has_many :received_emails
end
