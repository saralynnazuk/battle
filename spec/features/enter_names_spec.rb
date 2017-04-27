require 'spec_helper'
require './app'

feature 'Player names' do
  scenario 'expects players to fill in their names' do
    sign_in_and_play
    expect(page).to have_content('Jack vs. Jill')
  end
end
