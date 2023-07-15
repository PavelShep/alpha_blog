require "test_helper"

class SignupProcessTest < ActionDispatch::IntegrationTest
  
  test "create new user on signing up" do
    get '/signup'
    assert_response :success
    assert_difference 'User.count',1 do
        post users_path, params:{user: {username: "Pavel", email: "pavel@gmail.com",
                                 password: "12789OPS#!"}}
        follow_redirect!
    end
    assert_response :success
    assert_match "Welcome to the Alpha Blog", response.body
end

end
