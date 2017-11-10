class EmailSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :sent, :user, :recipient

end
