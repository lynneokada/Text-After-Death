class Receiver < ActiveRecord::Base
  # relationships
  has_many   :relationships
  has_many   :messages, through: :relationships
  belongs_to :user

end
