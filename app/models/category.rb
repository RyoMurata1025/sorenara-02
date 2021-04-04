class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '観光' },
    { id: 2, name: 'グルメ' },
    { id: 3, name: 'ランチ' },
    { id: 4, name: 'スイーツ' },
    { id: 5, name: 'スポーツ' },
    { id: 6, name: 'エンタメ' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end