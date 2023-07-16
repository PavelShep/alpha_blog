require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should get home(root) if not logged_in" do
    get root_url
    assert_response :success
  end

  test "get articles if logged_in" do
    @user = User.create(username: "johndoe", email: "johndoe@example.com", password: "password", admin: false)
    sign_in_as(@user)
    get root_url
    assert_redirected_to articles_url
  end

end
