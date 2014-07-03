require 'spec_helper'

describe "Employee pages" do

  subject { page }

  describe "employee page" do
    before { visit employee_path }

    it { should have_content('Employee') }
    it { should have_title(full_title('Employee')) }
  end
end
