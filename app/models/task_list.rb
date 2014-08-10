class TaskList < ActiveRecord::Base

  has_many :tasks
  #Validations
  validates :name, presence: {message: "Your tasks list could not be created."}

  # validates :name, presence: {message: "Your tasks list could not be created"}
end