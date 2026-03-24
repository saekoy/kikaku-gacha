class IdeasController < ApplicationController
  def index
    # 8年目の知見を活かした「ライバー企画のタネ」7日分
    @ideas = [
      { day: "DAY1", category: "雑談", title: "100の質問耐久", desc: "リスナーからの質問に答えるまで終われません！", diff: 3, prep: "15分" },
      { day: "DAY2", category: "ゲーム", title: "激ムズ死にゲー実況", desc: "話題の新作をリスナーと攻略します。", diff: 5, prep: "5分" },
      { day: "DAY3", category: "企画", title: "お悩み相談室", desc: "匿名ツールで募集した悩みにズバッと回答。", diff: 2, prep: "10分" },
      { day: "DAY4", category: "歌枠", title: "アニソン限定カラオケ", desc: "懐かしのアニソンから最新曲まで熱唱！", diff: 4, prep: "30分" },
      { day: "DAY5", category: "雑談", title: "今週の振り返り晩酌", desc: "お酒を飲みながら、今週の出来事をまったりトーク。", diff: 1, prep: "5分" },
      { day: "DAY6", category: "イベント", title: "初見さん歓迎凸待ち", desc: "新しいリスナーさんと仲良くなるチャンス！", diff: 3, prep: "0分" },
      { day: "DAY7", category: "ゲーム", title: "視聴者参加型対戦", desc: "リスナーさんと一緒にガチバトル！", diff: 2, prep: "10分" }
    ]
  end
end
