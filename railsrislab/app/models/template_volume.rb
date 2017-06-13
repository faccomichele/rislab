class TemplateVolume < ApplicationRecord
  belongs_to :os_type
  validates :name, :iscsiname, :os_type, presence: true
  validates :name, :iscsiname, uniqueness: true
end
