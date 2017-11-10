class EmailSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :sent, :read, :user, :recipient

end
