class Chat < ApplicationRecord
    validates :name, {presence:true,  length:{maximum: 60, minimum: 3}}
end
