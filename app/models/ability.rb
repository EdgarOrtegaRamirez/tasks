class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    #For Lists
    can :create, List
    can :update, List do |list|
      list.try(:user) == user
    end
  
    can :destroy, List do |list|
      list.try(:user) == user
    end

    #For Tasks
    can :create, Task
    can :update, Task do |task|
      task.try(:list).try(:user) == user
    end 

    can :destroy, Task do |task|
      task.try(:list).try(:user) == user
    end
  end
end
