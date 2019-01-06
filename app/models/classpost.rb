class Classpost < ApplicationRecord
    validates :prof, {presence:true, length:{maximum: 20}}
    validates :comment, {presence:true, length:{maximum: 350, minimum: 20}}
    validates :success, {presence:true, length:{maximum: 350, minimum: 20}}
    validates :rate, {presence:true}
    validates :grade, {presence:true}

end
