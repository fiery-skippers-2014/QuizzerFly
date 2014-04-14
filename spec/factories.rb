# FactoryGirl.define do
#   factory :user do
#     sequence(:name)  { |n| "Person #{n}" }
#     sequence(:email) { |n| "person_121231#{n}@example.com"}
#     password_hash "foobar"
#   end

#   factory :survey do
#     sequence(:title)  { |n| "Title #{n}" }
#     sequence(:description)  { |n| "Description #{n}" }
#     user
#   end
# end