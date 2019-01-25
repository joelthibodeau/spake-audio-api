# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user
  has_many :sessions, dependent: :destroy
end
