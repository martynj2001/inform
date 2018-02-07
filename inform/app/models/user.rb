class User < ApplicationRecord

  authenticates_with_sorcery!
  validates_confirmation_of :password, messge: "should match confirmation", if: :password

  #CanCan Authority
  ROLES = %w[admin moderator author].freeze
end
