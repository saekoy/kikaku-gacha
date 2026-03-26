class WeeklySchedulesController < ApplicationController
  # 表示処理（専用URLを開いた時に動く）
  def show
    # URLに含まれるuuidを使って、DBからデータを探す
    @schedule = WeeklySchedule.find_by!(uuid: params[:uuid])

    # 7つのIDから、それぞれのIdeaオブジェクトを復元する
    @ideas = [
      Idea.find(@schedule.idea_1_id),
      Idea.find(@schedule.idea_2_id),
      Idea.find(@schedule.idea_3_id),
      Idea.find(@schedule.idea_4_id),
      Idea.find(@schedule.idea_5_id),
      Idea.find(@schedule.idea_6_id),
      Idea.find(@schedule.idea_7_id)
    ]
  end

  # 保存処理（ガチャボタンを押した時に動く）
  def create
    # DBからランダムに7件取得
    ideas = Idea.all.sample(7)

    # 取得した7件のIDを、それぞれの曜日のカラムに入れて保存
    @schedule = WeeklySchedule.new(
      idea_1_id: ideas[0].id,
      idea_2_id: ideas[1].id,
      idea_3_id: ideas[2].id,
      idea_4_id: ideas[3].id,
      idea_5_id: ideas[4].id,
      idea_6_id: ideas[5].id,
      idea_7_id: ideas[6].id
    )

    if @schedule.save
      # 保存に成功したら、そのUUIDのページ（show）へジャンプ
      redirect_to weekly_schedule_path(@schedule.uuid)
    else
      redirect_to root_path, alert: I18n.t('weekly_schedules.create.failure')
    end
  end
end
