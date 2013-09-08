require 'spec_helper'

#describe "Schedulers" do
 # describe "GET /schedulers" do
  #  it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   #   get schedulers_path
    #  response.status.should be(200)
    #end
  #end
#end

describe "Schedulers" do

 let(:base_title) { "Scheduler Learning" }

  describe "Home page" do

    it "should have the content 'Scheduler'" do
      visit scheduler_home_path
      expect(page).to have_content('Scheduler')
    end

    it "should have the right title" do
      visit scheduler_home_path
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit scheduler_help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit scheduler_help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit scheduler_about_path
    expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit scheduler_about_path
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit scheduler_contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit scheduler_contact_path
     expect(page).to have_title("#{base_title} | Contact")
   end end
end

