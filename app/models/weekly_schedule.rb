class WeeklySchedule < ApplicationRecord
  # 保存する前にuuidカラムにランダムな文字列を入れる
  before_create :set_uuid

  private

  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
