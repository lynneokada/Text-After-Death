class Relationship < ActiveRecord::Base
  belongs_to :user,     class_name: "User"
  belongs_to :reveiver, class_name: "Receiver"
  belongs_to :message,  class_name: "Message"

  validates :receiver_id, presence: true
end
