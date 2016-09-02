require 'rails_helper'

RSpec.feature "IndexPages", type: :feature do
  context "going to be a webside" do
    Steps "you will be asked to enter contact information" do
      Given "I am on the Index page" do
        visit '/'
      end #ends given
    end # ends steps
  end # ends contexs
  
end # ends rspec
