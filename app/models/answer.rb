class Answer < ApplicationRecord
    validates :answer, {presence:true, length:{maximum: 350}}
end
