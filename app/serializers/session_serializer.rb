# frozen_string_literal: true

class SessionSerializer < ActiveModel::Serializer
  attributes :id, :date, :notes, :hours_worked_readable,
             :hours_recorded_readable, :project_id

  def hours_worked_readable
    object.hours_worked.to_f
  end

  def hours_recorded_readable
    object.hours_recorded.to_f
  end
end
