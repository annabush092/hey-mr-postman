class EmailsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :recipient_id, :subject, :content, :sent

  belongs_to :user
end
