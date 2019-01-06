class CommentP < ApplicationRecord
    validates :answer, {presence:true, length:{maximum: 200}, length:{minimum: 10}}
end
