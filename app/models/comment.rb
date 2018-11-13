class Comment < ApplicationRecord
    validates :content, {presence:true, length:{maximum: 400, minimum: 20}}

end
