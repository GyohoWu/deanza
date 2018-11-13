class ProjectC < ApplicationRecord
    validates :comment, {presence:true, length:{maximum: 350}, length:{minimum: 20}}
end
