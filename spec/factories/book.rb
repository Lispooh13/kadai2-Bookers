# FactoryBot.define do
#   factory :book do
#     sequence(:title) { |n| "title#{n}"}
#     sequence(:body) { |n| "body#{n}"}
#   end
# end

FactoryBot.define do
  factory :book do #どのモデルに対してデータ定義を行うか
    title { Faker::Lorem.characters(number:5) }
    body { Faker::Lorem.characters(number:20) }
    #カラム名{値} Faker:使用宣言,Lorem:ダミーテキストタイプを選択,characters:文字列を作成,number:生成文字数
    #ここでは「ランダムな文字列◯文字生成する」
  end
end