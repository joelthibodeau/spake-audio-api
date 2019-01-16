class AddProjectReferenceToSessions < ActiveRecord::Migration[5.2]
  def change
    add_reference :sessions, :project, foreign_key: true
  end
end
