class Project < ApplicationRecord
    validates :title, {presence:true, length:{maximum: 70}}
    validates :description, {presence:true, length:{maximum: 350}}
end
