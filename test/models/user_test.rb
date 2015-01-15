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
  should validate_uniqueness_of(:email)
  should have_db_index(:email)
#  should route(:get, '/users').to(action: 'index')
#  should route(:get, '/users/1').to(action: :show, id: 1)
  should have_secure_password

end
