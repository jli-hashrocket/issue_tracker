require 'spec_helper'

feature 'views About Us page' do
  it "views About Us page" do
    visit about_us_pages_path
    expect(page).to have_content("About Us")
  end
end

