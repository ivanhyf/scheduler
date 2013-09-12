require 'spec_helper'

describe "UserPages" do

  let(:base_title) { "Scheduler Learning" }
  subject { page }
  describe "signup page" do
    it "should have the content 'Sign up'" do
      visit signup_path
      expect(page).to have_content('Sign up')
    end
    it "should have the title 'Sign up'" do
      visit signup_path
      expect(page).to have_title("#{base_title} | Sign up")
    end
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
# Replace with code to make a user variable before { visit user_path(user) }
    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup" do
    before { visit signup_path }
    let(:submit) { "Create my account" }
    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end end
    describe "with valid information" do
      before do
        fill_in "Name",  with: "Example User"
        fill_in "Email",  with: "user@example.com"
        fill_in "Password", with: "foobar"
        fill_in "Confirmation", with: "foobar"
        end
      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end

