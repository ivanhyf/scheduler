require 'spec_helper'

describe "UserPages" do

  let(:base_title) { "Scheduler Learning" }

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
  end

