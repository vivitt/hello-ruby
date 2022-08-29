class Task < ApplicationRecord
  
    validates :title, presence: true
    validates :details, length: { maximum: 200 }
end
