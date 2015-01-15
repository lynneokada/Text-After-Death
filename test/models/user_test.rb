require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should have_many(:messages)
  should validate_uniqueness_of(:name)
  should validate_uniqueness_of(:email)
  should validate_uniqueness_of(:password)

end
