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


    if admin? #Create and edit users, create, edit and respond to InForms
      can :manage, :all
      can assign_roles, User
    elsif moderator? #can view and respond to InForms.
      can :manage, [InForm, Comment]
    elsif author?
      can [:create, :read], InForm, :user_id => user.id
    else
      can submit_only, InForm
    end

    # Custom Alias
    can assign_roles, User if user.admin?
  end

  def admin?
    user.role == 'admin' ? true : false
  end

  def moderator?
    user.role == 'moderator' ? true : false
  end

  def author?
    user.role == 'author' ? true : false
  end
end
