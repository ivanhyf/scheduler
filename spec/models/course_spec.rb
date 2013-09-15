require 'spec_helper'

describe Course do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @course = user.courses.build(name: "Software Engineering")
  end
  subject { @course }
  it { should respond_to(:name) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @course.user_id = nil }
    it { should_not be_valid }
  end
end