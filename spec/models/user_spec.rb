require 'rails_helper'
 RSpec.describe User, type: :model do
   describe "ユーザー新規登録" do
     it "nicknameが空だと登録できない" do
      user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",last_name: "test" ,first_name: "test",
      last_name_kana: "test", first_name_kana: "test", birth_day: '2000/01/01')
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
     end
     it "emailが空では登録できない" do
      user = User.new(nickname: "test", email: "", password: "00000000", password_confirmation: "00000000",last_name: "test" ,first_name: "test",
        last_name_kana: "test", first_name_kana: "test", birth_day: '2000/01/01')
        user.valid?
        expect(user.errors.full_messages).to include("Email can't be blank")
     end
     it "last_nameが空では登録できない" do
      user = User.new(nickname: "test", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",last_name: "" ,first_name: "test",
        last_name_kana: "test", first_name_kana: "test", birth_day: '2000/01/01')
        user.valid?
        expect(user.errors.full_messages).to include("Last name can't be blank")
     end
     it "first_nameが空では登録できない" do
      user = User.new(nickname: "test", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",last_name: "test" ,first_name: "",
        last_name_kana: "test", first_name_kana: "test", birth_day: '2000/01/01')
        user.valid?
        expect(user.errors.full_messages).to include("First name can't be blank")
     end
     it "last_name_kanaが空では登録できない" do
      user = User.new(nickname: "test", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",last_name: "test" ,first_name: "test",
        last_name_kana: "", first_name_kana: "test", birth_day: '2000/01/01')
        user.valid?
        expect(user.errors.full_messages).to include("Last name kana can't be blank")
     end
     it "first_name_kanaが空では登録できない" do
      user = User.new(nickname: "test", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",last_name: "test" ,first_name: "test",
        last_name_kana: "test", first_name_kana: "", birth_day: '2000/01/01')
        user.valid?
        expect(user.errors.full_messages).to include("First name kana can't be blank")
     end
     it "birth_dayが空では登録できない" do
      user = User.new(nickname: "test", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",last_name: "test" ,first_name: "test",
        last_name_kana: "test", first_name_kana: "test", birth_day: '')
        user.valid?
        expect(user.errors.full_messages).to include("Birth day can't be blank")
     end
    
   end
 end
