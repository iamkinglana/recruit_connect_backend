class UserSerializer < ApplicationSerializer
  attributes :id, :email, :password_digest, :role,:first_name, :surname, :middle_name, :email, :phone
end
