class EmailsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :recipient_id, :subject, :content, :sent

  belongs_to :user

  attribute :recipient_name
  attribute :user_name

  def recipient_name
      name: object.recipient.name
  end

  def user_name
      name: object.user.name
  end

end
