class User < ApplicationRecord
  has_secure_password

  USER_ROLES = {
    user: 0,
    agent: 1,
    admin: 2
  }
  validates_presence_of %i[email password], message: "can't be blank"
  validates_inclusion_of :role, in: USER_ROLES.keys

  enum :role, USER_ROLES
end