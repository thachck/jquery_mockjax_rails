require 'spec_helper'

describe 'static assets integration' do
  before do
    visit '/assets/jquery.mockjax.js'
  end

  it 'provides jquery.mockjax.js on the assets pipeline' do
    page.text.should include 'MockJax - jQuery Plugin to Mock Ajax requests'
  end
end
