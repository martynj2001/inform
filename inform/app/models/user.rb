class User < ApplicationRecord

  authenticates_with_sorcery!
  validates_confirmation_of :password, messge: "should match confirmation", if: :password

  has_many :in_forms

  #CanCan Authority
  ROLES = %w[admin moderator author].freeze

  def role?(role)
    case role
      when :admin
        true
      when :moderator
        true
      when :author
        true
      else
        false
    end
  end

end
