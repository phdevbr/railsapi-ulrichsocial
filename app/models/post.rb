class Post < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id', required: true
end
