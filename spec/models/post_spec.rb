require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @tweet = FactoryBot.build(:post)
  end

  describe '投稿機能' do
    context '投稿できるとき' do
      it 'days、dayofweek_id、satrttime、endtime、place、supplementが存在すれば登録できる' do
        expect(@tweet).to be_valid
      end
    end
    context '投稿できないとき' do
      it 'daysが空では登録できない' do
        @tweet.days = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Days can't be blank")
      end
      it 'datofweek_idが空では登録できない' do
        @tweet.member_id = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Dayofweek can't be blank")
      end
    end
  end
end
