class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin? 
      can :manage, :all
      cannot :manage, Comment do |comment|
        comment.try(:user) != user 
      end
    else
      can :read, :all
      can :create, Comment
      can [:update, :destroy], Comment do |comment|
        comment.try(:user) == user 
      end
      can :create, Vote
      can [:update, :destroy], Vote do |vote|
        vote.try(:group) == user.group 
      end
    end
  end
end
