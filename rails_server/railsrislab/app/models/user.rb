class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password
  after_destroy :ensure_an_admin_remains
  has_many :orders, dependent: :destroy
  
  class Error < StandardError
  end

  private
    def ensure_an_admin_remains
      if User.where(administrator: true).count.zero?
        raise Error.new "Can't delete last administrative user"
      end
    end

end
