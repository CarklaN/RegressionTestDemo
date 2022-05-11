require 'rspec'
require 'watir'
require 'helper'
require 'page_elements/objects'
require 'page_elements/page_container'

shared_context 'Login' do |email, password|

  let(:actions) {@main.methods}

  context 'Login with valid credentials' do

    it 'Send Valid Credentials' do
      actions.send_credentials(email, password)
    end

  end

end