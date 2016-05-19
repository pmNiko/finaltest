class ConsultPolicy < ApplicationPolicy
  def index?
    true
  end

  def update?
    user.present? &&
    ((record.medic == user) || (user.has_role? :admin))
  end

  def create?
    record.medic == user
  end

  def new?
    user.present?
  end

  def destroy?
    user.present? &&
    ((record.medic == user) || (user.has_role? :admin))
  end
end
