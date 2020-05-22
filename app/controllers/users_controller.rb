class UsersController < ApplicationController
	validates :name, presence: true, length: { minimum: 2, maximum: 20 }
	has_many :tweets, dependent: :destroy
end
