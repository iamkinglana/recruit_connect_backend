class UserSerializer < ApplicationSerializer
  attributes :id ,:name, :username, :password_digest, :role
end
