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
  describe "Home page" do

    it "should have the content 'Scheduler'" do
      visit '/scheduler/home'
      expect(page).to have_content('Scheduler')
    end

    it "should have the right title" do
      visit '/scheduler/home'
      expect(page).to have_title("Scheduler Learning | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/scheduler/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/scheduler/help'
      expect(page).to have_title("Scheduler Learning | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/scheduler/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/scheduler/about'
      expect(page).to have_title("Scheduler Learning | About")
    end
  end
end