class Announcement < ApplicationRecord
  belongs_to :user
  belongs_to :mypage_config
end
