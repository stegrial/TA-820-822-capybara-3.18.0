require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    visit 'https://trueautomation.io/'

    find(:xpath, ta('trueautomationio:home:loginBtn', "//div[./span[text()='Login']]")).click

    find(:css, ta('trueautomationio:signin:signupBtn', 'div.sign-up-container > a')).click

    fill_in 'email', with: 'your@mail.com'

    sleep 3
  end

  scenario 'Test example' do
    visit 'https://app.trueautomation.io/auth/signin'

    click_button(ta('within:element_inside:click_button', 'Login'))

    sleep 3
  end

  scenario 'Test example 14 - select id' do
      visit 'https://www.facebook.com'

        select('11', from: ta('within:element_inside:select', 'day'))

      sleep 3
  end

  scenario 'Test example 15 - choose text' do
      visit 'https://www.facebook.com'

        choose(ta('within:element_inside:choose', 'Мужчина'))

      sleep 3
  end

  scenario 'Test example 8 - click_link and two elements on the page (first element)' do

      visit 'https://trueautomation.io/'

      click_link(ta('within:element_inside:documentation', 'Documentation'))

      sleep 3
  end

  scenario 'Test example 8 - click_link and two elements on the page (first element)' do

    visit 'https://app.trueautomation.io/auth/signin'

    click_link(ta('within:element_inside:back_to_main', 'Back to main'))

    sleep 3
  end

  scenario 'Test example 8 - click_link and two elements on the page (first element)' do

    visit 'https://app.trueautomation.io/auth/signin'

    click_link(ta('within:element_inside:forgot_pass', 'Forgot your password?'))

    sleep 3
  end
end
