class User < ActiveRecord::Base

  # validations
  validates :name,  :presence => true, :length => { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence:true,
  #                   length: {maximum: 255},
  #                   format: {with: VALID_EMAIL_REGEX},
  #                   uniqueness: {case_sensitive: false}
  validates :password, presence: true

  self.inheritance_column = :user_type

  # We will need a way to know which types with subclass the User model
  def self.user_types
    %w(Sender Receiver)
  end

end

class Sender < User; end
class Receiver < User; end
