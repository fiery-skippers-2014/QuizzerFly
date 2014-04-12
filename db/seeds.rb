5.times do
  @this_user = User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password_hash => 'password'

  2.times do
    Survey.create :user_id => @this_user.id, :title => Faker::Commerce.color, :description => Faker::Company.bs
  end
end