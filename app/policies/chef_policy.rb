class ChefPolicy < ApplicationPolicy
  # class Scope < Scope
    # def resolve
    #   scope.all
    # end
  # end

  def new?
    true
  end

  def create?
    if policy(Chef).create?
      link_to "New chef", new_chef_path
    end
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
