current_dir = File.dirname(__FILE__)

require 'bundler/setup'
Bundler.require
require "#{current_dir}/../spec/spec_helper.rb"
require "#{current_dir}/my_helper.rb"

include MyHelper

RSpec.describe MyHelper do
  describe '#average_of' do
    it 'use reduce to sum' do
      arr_spy = spy([1, 2, 3])
      average_of(arr_spy)

      expect(arr_spy).to have_received(:reduce)
    end
  end
end
