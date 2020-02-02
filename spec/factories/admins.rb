FactoryBot.define do
  factory :admin do
    email { 'hoge@example.com' }
    password { 'hogehoge' }
    password_confirmation { 'hogehoge' }
  end
end
