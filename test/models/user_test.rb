require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should have_many(:messages)
  should validate_uniqueness_of(:email)
  should have_db_index(:email)

end
