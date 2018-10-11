class ProjectC < ApplicationRecord
    validates :comment, {presence:true, length:{maximum: 350}}
end
