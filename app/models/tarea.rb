class Tarea < ApplicationRecord
    validates :descr, presence: true, length: { maximum: 200 }
end
