class OsType < ApplicationRecord
  has_many :template_volumes, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
