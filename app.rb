require "bundler"
Bundler.require

get "/" do
  "The app is running!"
end

# configure do
#   ActiveRecord::Base.establish_connection(
#     adapter:  "postgresql",
#     host:     "postgresql.service.consul",
#     username: "postgres",
#     database: "demo",
#     encoding: "utf8",
#   )
# end
#
# class Post < ActiveRecord::Base; end
#
# get "/posts", provides: :json do
#   Post.all.to_json
# end
#
# post "/posts", provides: :json do
#   if post = Post.create(params)
#     post.to_json
#   else
#     status 422
#     post.errors.to_json
#   end
# end
