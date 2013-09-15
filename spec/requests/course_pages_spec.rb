require 'spec_helper'

describe "CoursePages" do
  subject { page }
  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }
  describe "course creation" do
    before { visit scheduler_home_path }
    describe "with invalid information" do
      it "should not create a course" do
        expect { click_button "Add" }.not_to change(Course, :count)
      end
      describe "error messages" do
        before { click_button "Add" }
        it { should have_content('error') }
      end
    end
    describe "with valid information" do
      before { fill_in 'course_name', with: "Software Engineering" }
      it "should create a course" do
        expect { click_button "Add" }.to change(Course, :count).by(1)
      end
    end
  end

  describe "course destruction" do
    before { FactoryGirl.create(:course, user: user) }
    describe "as correct user" do
      before { visit scheduler_home_path }
      it "should delete a course" do
        expect { click_link "Completed" }.to change(Course, :count).by(-1)
      end end
  end
end
