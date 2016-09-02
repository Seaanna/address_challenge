require 'rails_helper'

RSpec.feature "IndexPages", type: :feature do
  context "going to be a webside" do
    Steps "you will be asked to enter contact information" do
      Given "I am on the Index page" do
        visit '/'
      end #ends given
      Then "I can enter my information" do
         fill_in 'name', with: 'Larry'
         fill_in 'last_name', with: 'Banana'
         fill_in 'email', with: 'L@banana.com'
         fill_in 'address', with: '1000 Fruit Ln.'
         click_button 'Submit'
      end # ends Then
      And "I am taken to a page that shows all my contact information" do
        expect(page).to have_content 'Larry'
        expect(page).to have_content 'Banana'
        expect(page).to have_content 'L@banana.com'
        expect(page).to have_content '1000 Fruit Ln.'
      end # ends and

    end # ends steps
  end # ends contexts
end # ends rspec
