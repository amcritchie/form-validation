class Task < ActiveRecord::Base
  belongs_to :task_list
  validates :body, presence: {message: "Your tasks could not be created."}

end