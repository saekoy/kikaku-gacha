Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "ideas#index"

  # ガチャ結果を保存する（POST）
  post "/schedules", to: "weekly_schedules#create", as: :weekly_schedules

  # 保存された結果を表示する（GET）
  get "/schedules/:uuid", to: "weekly_schedules#show", as: :weekly_schedule
end
