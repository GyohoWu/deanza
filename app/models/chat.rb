class Chat < ApplicationRecord
    validates :name, {presence:true, length:{maximum: 100}, length:{minimum: 20}}
end
