require 'rails_helper'

RSpec.describe "hello", :type => :view do
  it "shows a login link if user is not logged in" do
    visit root_path
    expect(page.body).to include 'login'
  end

  it "greets the user if they are logged in." do
    visit login_path
    fill_in 'name', with: 'Gillian'
    click_button 'login'
    expect(page.body).to include 'Gillian'
  end
end
