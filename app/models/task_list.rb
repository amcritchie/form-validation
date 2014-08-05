class TaskList < ActiveRecord::Base

  #Validations
  validates :name, presence: {message: "Your task list could not be created."}

  # validates :name, presence: {message: "Your task list could not be created"}
end