class User < ApplicationRecord

  #before_save {self.email.downcase}

  has_secure_password

  has_many :projects, foreign_key: "owner_id", class_name: 'Project'

  has_many :tasks, foreign_key: "owner_id", class_name: 'Task'


  
  # validates :first_name, presence: true,length: {maximum: 40}, :on=> :create

  # validates :last_name, presence: true,length: {maximum: 40}, :on=> :create

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  # validates :email, presence: true ,format: { with: VALID_EMAIL_REGEX },
  #           uniqueness:{:case_sensitive => true}, :on=> :create

  # validates :security_check,presence: true, :on=> :create

  # validates :password,presence: true,
		# 	      length: { minimum: 6 }, :on=> :create

end
