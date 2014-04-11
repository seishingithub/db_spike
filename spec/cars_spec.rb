require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature "can fill in form" do
  scenario "user can see list of cars" do
    visit '/'
    fill_in "car_form", with: "Honda"
    click_on "Submit Vehicle For Sale"
    expect(page).to have_content "Honda"
  end
end