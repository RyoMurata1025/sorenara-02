require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  context '商品出品機能' do
    it "撮影場所が空だと登録できない" do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it "撮影場所の住所が空では登録できない" do
      @item.address = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Address can't be blank")
    end
    it "投稿内容が空では登録できない" do
      @item.information = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Information can't be blank")
    end
    it "カテゴリーが空では登録できない" do
      @item.category_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end
  end
end
