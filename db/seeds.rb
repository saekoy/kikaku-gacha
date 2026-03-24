# 既存のデータを一度消去（やり直しやすくするため）
Idea.destroy_all

# データをDBに保存
Idea.create!([
    { category: "雑談", title: "100の質問耐久", description: "リスナーからの質問に答えるまで終われません！", difficulty: 3 },
    { category: "ゲーム", title: "激ムズ死にゲー実況", description: "話題の新作をリスナーと攻略します。", difficulty: 5 },
    { category: "企画", title: "お悩み相談室", description: "匿名ツールで募集した悩みにズバッと回答。", difficulty: 2 },
    { category: "歌枠", title: "アニソン限定カラオケ", description: "懐かしのアニソンから最新曲まで熱唱！", difficulty: 4 },
    { category: "雑談", title: "今週の振り返り晩酌", description: "お酒を飲みながら、今週の出来事をまったりトーク。", difficulty: 1 },
    { category: "イベント", title: "初見さん歓迎凸待ち", description: "新しいリスナーさんと仲良くなるチャンス！", difficulty: 3 },
    { category: "ゲーム", title: "視聴者参加型対戦", description: "リスナーさんと一緒にガチバトル！", difficulty: 2 }
])

puts "Seed: #{Idea.count}件の企画データを作成しました！"