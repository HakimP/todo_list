class List < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	belongs_to :user
	
	validates :title, presence: true 

	scope :tareas_completas, -> { where(completed: true) }

	scope :tareas_incompletas, -> { where(completed: false) }
end
