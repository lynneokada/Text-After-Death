class Message < ActiveRecord::Base
  # relationships
  has_one  :relationship
  has_many :receivers, through: :relationships, dependent: :destroy
  has_one  :user, through: :relationships, dependent: :destroy

  # validations
  validates :content, :presence => true
  validates :date, :presence => true
  validates_presence_of :relationship
  accepts_nested_attributes_for :relationship

end
