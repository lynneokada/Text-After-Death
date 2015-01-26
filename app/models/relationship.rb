class Relationship < ActiveRecord::Base
  # relationships
  belongs_to :user
  belongs_to :receiver
  belongs_to :message

  validates :receiver_id, presence: true
end
