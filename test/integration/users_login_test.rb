require 'test_helper'
	
class UsersLoginTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
  end

  test "login with invalid fields" do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: {email: "", password: ""}
    assert_template 'sessions/new'
    assert_not flash.empty?
    get home_path
    assert flash.empty?
  end

  feature "Login" do
    background do
      User.create(:name => 'user 1', :email => 'user@example.com', :password => 'foobar')
    end

    scenario "Logging in with correct credentials"
      visit login_path
      fill_in "Login", :with => 'user@example.com'
      fill_in "Password", :with => 'foobar'
      click_link 'Sign In'
      within_scope("h1") do
        page.should have_content('user 1')
      end
    end
end
