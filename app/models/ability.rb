class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all .
    if user.admin?  
      can :manage, :all
    else
      can :manage, User, id: user.id  
    end
  end
end
