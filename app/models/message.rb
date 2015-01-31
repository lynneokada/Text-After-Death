class Message < ActiveRecord::Base
  # relationships
  has_many :relationships
  has_many :receivers, through: :relationships, dependent: :destroy
  has_one  :user, through: :relationships, dependent: :destroy

  # validations
  validates :content, :presence => true
  validates :date, :presence => true
  validates :receivers, :presence => true
  accepts_nested_attributes_for :relationships

end
