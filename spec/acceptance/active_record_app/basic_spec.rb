require 'spec_helper/app/active_record'

feature "Main page" do

  background do
    # create_user :login => "jdoe"
    # login_as "jdoe"
  end

  scenario "should show existing quotes" do
    # create_quote :text => "The language of friendship is not words, but meanings",
    #              :author => "Henry David Thoreau"

    visit "/"

    # page.should have_css(".quote", :count => 1)
    # within(:css, ".quote") do
    #   page.should have_css(".text", :text => "The language of friendship is not words, but meanings")
    #   page.should have_css(".author", :text => "Henry David Thoreau")
    # end
  end

end

# describe "Navigation" do
#   include Capybara
#   
#   it "should be a valid app" do
#     ::Rails.application.should be_a(MongoidApp::Application)
#   end
#   
#   it "should extend ApplicationController" do
#     ApplicationController.public_instance_methods.should include(:the_user)
#   end
# end
