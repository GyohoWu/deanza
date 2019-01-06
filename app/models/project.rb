class Project < ApplicationRecord
    validates :title, {presence:true, length:{maximum: 70, minimum: 10}}
    validates :description, {presence:true, length:{maximum: 350, minimum: 20}}
end
