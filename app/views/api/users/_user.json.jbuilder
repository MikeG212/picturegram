json.extract! user, :id, :username, :email
json.posts user.posts.pluck(:id)