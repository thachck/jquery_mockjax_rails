require 'spec_helper'

describe "Stub ajax request", js: true do
  let(:message) { 'my custom message' }
  let(:api_path) { '/api/path' }

  before do
    stub_ajax url: api_path, responseText: { message: message }
    visit home_index_path
  end

  it 'stubs the ajax request and returns the correct message' do
    page.execute_script("$.getJSON('#{api_path}', function(data) { $('body').append(data.message) })")
    wait_until do
      page.has_content?(message)
    end
  end
end