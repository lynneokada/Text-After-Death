require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should have_many(:messages)
  should validate_uniqueness_of(:email)
  should have_db_index(:email)

end
