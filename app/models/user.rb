# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :projects
  has_many :sessions, through: :projects

  # # have a collection of sessions that belongs to user
  # def sessions
  #   # find all the projects
  #   # find all sessions that belong to projects
  #   self.projects.map { |project| project.sessions }
  # end
end
