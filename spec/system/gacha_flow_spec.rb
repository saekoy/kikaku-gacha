require 'rails_helper'

RSpec.describe "ガチャの利用フロー", type: :system do
  before do
    # JS（ローディング表示）をテストするために selenium を使う
    driven_by :selenium_chrome_headless
    
    # FactoryBotを使って、ガチャの素材となる企画データを30件用意
    create_list(:idea, 30)
  end

  it "トップページからガチャを回し、1週間の予定を保存してシェアできること" do
    # 1. トップページにアクセス
    visit root_path
    expect(page).to have_content "配信ネタ・ガチャ"

    # 2. 「✨ ガチャを回す」ボタンをクリック
    # 10日目に追加した「sleep 1.0」による待ち時間も、Capybaraが自動で待ってくれます
    click_on "✨ ガチャを回す"

    # 3. 専用URL（/schedules/UUID）に移動したことを確認
    # UUID形式（8-4-4-4-12桁）の正規表現でURLをチェック
    expect(page).to have_current_path(/\/schedules\/[0-9a-f-]{36}/)

    # 4. 「1日目」から「7日目」までの表示があるか確認
    expect(page).to have_content "1日目"
    expect(page).to have_content "7日目"

    # 5. カードが正しく7枚並んでいるか（グリッド内のdivをカウント）
    expect(all('.grid > div').count).to eq 7

    # 6. X（Twitter）へのシェアボタンが存在するか確認
    expect(page).to have_link "Xでポスト"
    
    # 7. URLコピーボタンが動くか（JSの動作確認）
    # クリックしてアラートが出ることを確認
    accept_alert do
      find('button[title="URLをコピー"]').click
    end
  end
end
