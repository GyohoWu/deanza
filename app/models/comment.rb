class Comment < ApplicationRecord
    validates :content, {presence:true, length:{maximum: 400, minimum: 5}}

end
