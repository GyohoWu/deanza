class ProjectC < ApplicationRecord
    validates :comment, {presence:true, length:{maximum: 300, minimum: 20}}
end
