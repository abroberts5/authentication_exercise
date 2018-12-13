require 'rails_helper'

describe 'create accounts' do
  describe 'as a visitor' do
    it "should create new account" do

      visit new_user_path

      fill_in :user_name, with: "qwerty"
      fill_in :user_email, with: "qwerty1@gmail.com"
      fill_in :user_password, with: "1234567"

      click_on 'Create User'

      expect(current_path).to eq(user_path("#{User.last.id}"))
      expect(page).to have_content("qwerty")
      expect(page).to have_content("qwerty1@gmail.com")
      expect(page).to have_content("1234567")
    end
  end
end
