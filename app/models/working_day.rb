class WorkingDay < ActiveRecord::Base



	has_many :restaurant_working_days
	has_many :restaurants, through: :restaurant_working_days


	validates :name, presence: true






end
