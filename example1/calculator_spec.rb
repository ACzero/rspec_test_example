current_dir = File.dirname(__FILE__)

require 'bundler/setup'
Bundler.require
require "#{current_dir}/../spec/spec_helper.rb"
require "#{current_dir}/calculator.rb"

RSpec.describe Calculator do
  describe '.is_odd?' do
    context 'argument is odd' do
      it 'will not raise error' do
        expect { Calculator.is_odd?(1) }.not_to raise_error
      end

      it 'return true' do
        expect(Calculator.is_odd?(1)).to be true
      end
    end

    context 'argument is even' do
      it 'will not raise error' do
        expect { Calculator.is_odd?(2) }.not_to raise_error
      end

      it 'return false' do
        expect(Calculator.is_odd?(2)).to be false
      end
    end
  end
end
