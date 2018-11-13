class Question < ApplicationRecord
    validates :prof, {presence:true, length:{maximum: 20}}
    validates :title, {presence:true, length:{maximum: 70}}
    validates :question, {presence:true, length:{maximum: 600}}
end
