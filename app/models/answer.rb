class Answer < ApplicationRecord
    validates :answer, {presence:true, length:{maximum: 600}, length:{minimum: 20}}
end
