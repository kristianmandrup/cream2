require 'active_record_app_spec_helper'

describe "Navigation" do
  include Capybara
  
  it "should be a valid app" do
    ::Rails.application.should be_a(ActiveRecordApp::Application)
  end
  
  it "should extend ApplicationController" do
    ApplicationController.public_instance_methods.should include(:the_user)
  end  
end
