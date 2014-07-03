require 'spec_helper'

describe Employee do

  before do
    @employee = Employee.new(name: "Example Employee", at_work: 1.1, working_hours: 1.1, breaks: 1.1, huddle: 1.1,
    	                     one_on_ones: 1.1, team_meetings: 1.1, other: 1.1, other_meetings: 1.1, training: 1.1)
  end

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

 it { should be_valid }

  describe "when name is not present" do
    before { @employee.name = " " }
    it { should_not be_valid }
  end  
end
