class Ability
include CanCan::Ability
   def initialize(user)
      user ||= User.new # guest user
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :create, Post
      can :update, Post do |post|
    end
  end
end
end

