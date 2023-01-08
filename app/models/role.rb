class Role < ApplicationRecord
    #Association with User table 
    belongs_to :user
end
