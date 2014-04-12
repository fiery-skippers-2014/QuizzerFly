#----------- HOMEPAGE -----------

get '/' do
  erb :index
end



# # --------------COMMENTS ON A POST
# # Go to create_comment form page based on comment button on post
# get "posts/:post_id/comments" do
#   @post = Post.find(params[:post_id])
#   erb :create_comment
# end
# # Create comment based from button on post
# post "posts/:post_id/comments" do
#   new_comment = Comment.create(comment: params[:comment],post_id: params[:id])
#   current_user.comments << new_comment
#   redirect back
# end






####################### FEATURES ###########################

