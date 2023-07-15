require "test_helper"

class NewArticleCreationTest < ActionDispatch::IntegrationTest

  test "create new article" do
    @user = User.create(username: "johndoe", email: "johndoe@example.com", password: "password", admin: false)
    sign_in_as(@user)
    get new_article_path
    assert_response :success
    assert_difference 'Article.count',1 do
        post articles_path , params:{article: {title: "Article for test",
            description: "This is a new article for test"}}
        follow_redirect!
    end
    assert_response :success
    assert_match 'Article for test', response.body
  end

end
