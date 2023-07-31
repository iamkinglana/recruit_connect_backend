class UserSerializer < ApplicationSerializer
  attributes :id, :email, :password_digest, :role
end
