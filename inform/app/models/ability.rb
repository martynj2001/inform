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
    #

    # Guest - not signed in, can create and submit in_forms
    user ||= User.new

    if user.role == 'admin' #Create and edit users, create, edit and respond to InForms
      can :manage, :all
      can :assign_roles, User
    elsif user.role == 'moderator' #can view and respond to InForms.
      can :manage, [InForm, Comment]
    elsif user.role == 'author'
      can [:create, :read], InForm, :user_id => user.id
    else
      can :create, [InForm, User]
    end

  end
end
