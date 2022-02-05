class Article < ApplicationRecord

    include Visible

    has_many :comments, dependent: :destroy

    validates :title, presence: true, length: {:minimum => 5}
    validates :text, presence: true, length: {:minimum => 5}
    has_one_attached :image

end
