class Contact < ApplicationRecord
  with_options presence: true do
    validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :message
  end
end
