class Comment < ApplicationRecord
    validates :content, {presence:true, length:{maximum: 150, minimum: 20}}

end
