class User < ActiveRecord::Base
	has_many :list, dependent: :destroy

	validates :name, :lastname, :username, :email, presence: true
	validates :name, :lastname, :username, :email, uniqueness: true
end
