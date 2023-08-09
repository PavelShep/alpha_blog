
# Create simple Users
User.create!(:username => 'John Doe', :email => 'john@gmail.com', :password => 'password', :password_confirmation => 'password', :admin => false)
User.create!(:username => 'John Morgan', :email => 'morgan@gmail.com', :password => 'password1', :password_confirmation => 'password1', :admin => false)
# Create admin Users
User.create!(:username => 'Alex Smith', :email => 'alexsmith@gmail.com', :password => 'password12', :password_confirmation => 'password12', :admin => true)

# Create Categories
Category.create!([{
  name: "Sports"
},
{
  name: "Biology"
},
{
 name: "English"
}])

# Create Articles
Article.create!(title: "Swimming", description: "Considered an invitation do introduced sufficient understood instrument it.", user_id: 1)
Article.create!(title: "Tigers", description: "Considered an invitation do introduced sufficient understood instrument it.", user_id: 2)

# Create Article_Categories
ArticleCategory.create!(article_id: "1", category_id: "1")
ArticleCategory.create!(article_id: "2", category_id: "2")

