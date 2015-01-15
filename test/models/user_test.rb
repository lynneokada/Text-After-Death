require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should have_many(:messages)
  should validate_presence_of(:name)
  should validate_presence_of(:email)
  should validate_presence_of(:password)
  should ensure_length_of(:password).is_at_least(6)

end
