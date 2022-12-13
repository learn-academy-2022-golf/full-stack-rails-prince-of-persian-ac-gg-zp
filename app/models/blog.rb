class Blog < ApplicationRecord
    validates :title, :content, presence: true, on: :create
    validates :title, :content, presence: true, on: :update

end
