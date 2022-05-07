class Author < ApplicationRecord
    has_one_attached :avatar
    has_many_attached :photos
    validates :first_name, presence: true, length: {minimum: 2, maximum: 100}
    validates :last_name, presence: true
    validates :description, allow_nil: true, length: {maximum: 500}

   
    has_many :addresses, dependent: :destroy
    has_many :posts
end
