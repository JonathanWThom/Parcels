require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The cost to ship path', {:type => :feature}) do
  it('takes input and returns shipping cost') do
    visit('/')
    fill_in('height', :with => "10")
    fill_in('width', :with => "10")
    fill_in('depth', :with => "0")
    fill_in('weight', :with => "5")
    fill_in('distance', :with => "50")
    choose('5')
    click_button('See Estimate')
    expect(page).to have_content('50.0')
  end
end
