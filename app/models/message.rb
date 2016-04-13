# t.text     "body"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false

class Message < ActiveRecord::Base

  validates :body, presence: true

end
