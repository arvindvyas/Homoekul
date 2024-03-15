class UserVoucher < ApplicationRecord
  belongs_to :user
  belongs_to :voucher
  enum status: [:unused, :redeemed]

end
