class User < ApplicationRecord

  has_many :sent_emails, :class_name => "Email", :foreign_key => 'user_id'
  has_many :received_emails, :class_name => "Email", :foreign_key => 'recipient_id'
end
