require 'rails_helper'

RSpec.describe WeeklySchedule, type: :model do
  it '保存した時にUUIDが自動で生成されること' do
    # モックのデータ（適当な企画ID）を用意して保存
    schedule = WeeklySchedule.create(
      idea_1_id: 1, idea_2_id: 1, idea_3_id: 1,
      idea_4_id: 1, idea_5_id: 1, idea_6_id: 1, idea_7_id: 1
    )
    expect(schedule.uuid).to be_present
  end
end
