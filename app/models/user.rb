class User < ActiveRecord::Base

  validates :name,  :presence => true, :length => { maximum: 50 }

  self.inheritance_column = :user_type

  # We will need a way to know which types with subclass the User model
  def self.user_types
    %w(Sender Receiver)
  end

end

class Sender < User; end
class Receiver < User; end
