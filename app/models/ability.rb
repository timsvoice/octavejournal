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
        can :manage, :all 
    else
      # Contributor
      if user.role_id == 2
        can :manage, :all 
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
