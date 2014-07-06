require 'spec_helper'

describe Employee do

=begin
  before do
    @employee = Employee.new(name: "Example Employee", at_work: 1.1, working_hours: 1.1, breaks: 1.1, huddle: 1.1,
    	                     one_on_ones: 1.1, team_meetings: 1.1, other: 1.1, other_meetings: 1.1, training: 1.1,
    	                     user_id: 1)
  end
=end

  let(:user) { FactoryGirl.create(:user)}
  before { @employee = user.employees.build(name: "Paul Carruthers")}

  subject { @employee }

  it { should respond_to(:name) }
  it { should respond_to(:at_work) }
  it { should respond_to(:working_hours) }
  it { should respond_to(:breaks) }
  it { should respond_to(:huddle) }
  it { should respond_to(:one_on_ones) }
  it { should respond_to(:team_meetings) }
  it { should respond_to(:other) }
  it { should respond_to(:other_meetings) }
  it { should respond_to(:training) }
  it { should respond_to(:user_id) }
  its(:user) { should eq user }

 it { should be_valid }

  describe "when name is not present" do
    before { @employee.name = " " }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
  	before { @employee.user_id = nil }
  	it {should_not be_valid}
  end

  describe "with employee name that is too long" do
  	before { @employee.name = "a" * 31 }
  	it { should_not be_valid }
  end
end

