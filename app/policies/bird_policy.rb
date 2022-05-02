class BirdPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user == record.user || user.role
  end

  def destroy?
    user == record.user || user.role
  end
end
