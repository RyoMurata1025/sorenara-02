FactoryBot.define do
  factory :user do
    nickname              {'tester01'}
    email                 {'tester01@example'}
    password              {'tester01'}
    password_confirmation {password}
    family_name           {"試験者"}
    first_name            {"一"}
    family_name_kana      {"シケンシャ"}
    first_name_kana       {"イチ"}
    birth_day             {"19930109"}
  end
end