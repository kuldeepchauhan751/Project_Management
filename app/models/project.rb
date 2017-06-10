class Project < ApplicationRecord

	has_many :tasks , dependent: :destroy

	belongs_to :user

	validates :name, presence: true, :on=> :create


	# validates :start_date,
 #      date: { after: Proc.new { Date.today }, message: 'must be after today' },
 #      on: :create

 #    validates :end_date,
 #          date: { after: :start_date }

	
end
