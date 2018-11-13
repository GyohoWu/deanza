class Project < ApplicationRecord
    validates :title, {presence:true, length:{maximum: 70}, length:{minimum: 20}}
    validates :description, {presence:true, length:{maximum: 350}, length:{minimum: 20}}
end
