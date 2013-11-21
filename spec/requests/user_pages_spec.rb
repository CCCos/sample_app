require 'spec_helper'

RSpec.configure do |config|
	config.include Capybara::DSL
end

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end
