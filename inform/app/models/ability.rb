class Ability

  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here.
    #
    # :manage - allows access to all RESTful controller actions
    #
    # :read - allows user access to #create, #show and #index controller actions
    #
    # :create - allows users access to #new controller actions
    #
    # :edit - allows users access to #update
    #
    # :destroy - allows the user to access #destroy

    # Guest - not signed in, can create and submit in_forms

    can :create, InForm

    if user.present?

      if user.role == "author"
        can :read, InForm
        cannot :destroy, InForm
      end

      if user.role == 'moderator'
        can :manage, :all
        cannot :destroy, InForm
        cannot :manage, User
      end

      if user.role == 'admin'
        can :manage, :all
      end

    end
  end
end
