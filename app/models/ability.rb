class Ability
include CanCan::Ability
  def initialize(user)
    user ||= User.new

    # Admin
    if user.role_id == 4
      can :manage, :all
    else
      # Editor
      if user.role_id == 3
        can :read, :all 
        can :create, Article 
        can :create, Issue
        can :update, Article
        can :update, Issue
    else
      # Contributor
      if user.role_id == 2
        can :read, :all 
        can :create, Article
        can :update, Article
    else
      # Subscriber (default)
      if user.role_id == 1
        can :read, Article 
        can :read, Issue
      end
      end
      end
    end
  end
end
