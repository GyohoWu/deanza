class Answer < ApplicationRecord
    validates :answer, {presence:true, length:{maximum: 350}, length:{minimum: 20}}
end
