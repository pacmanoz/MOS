require 'spec_helper'

describe "Available Hours pages" do

  subject { page }

  describe "Available Hours page" do
    before { visit employee_path }

    it { should have_content('Available Hours') }
    it { should have_title(full_title('Available Hours')) }
  end
end
