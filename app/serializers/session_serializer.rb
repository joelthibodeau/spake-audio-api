# frozen_string_literal: true

class SessionSerializer < ActiveModel::Serializer
  attributes :id, :date, :hours_worked, :hours_recorded, :notes
end
