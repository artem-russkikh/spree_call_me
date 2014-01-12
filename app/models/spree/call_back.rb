class Spree::CallBack < ActiveRecord::Base
  validates :name, presence: true
  validates :phone, presence: true
end
