class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.integer :user_id
      t.integer :recipient_id
      t.string :subject
      t.string :content
      t.boolean :sent

      t.timestamps
    end
  end
end
