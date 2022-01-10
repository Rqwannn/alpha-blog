# presence untuk validasi agar data tidak boleh kosong
# length untuk validasi agar data bisa di masukuan minimum 6 character
class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
