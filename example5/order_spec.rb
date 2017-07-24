current_dir = File.dirname(__FILE__)

require 'bundler/setup'
Bundler.require
require "#{current_dir}/../spec/spec_helper.rb"
require "#{current_dir}/order.rb"

RSpec.describe Order do
  describe 'create new order' do
    context 'when inventory is enough' do
      it 'order is valid' do
        warehouse = double('warehouse')
        expect(warehouse).to receive(:has_enough?).with(50).and_return(true)
        expect(warehouse).to receive(:remove).with(50)

        order = Order.new(warehouse, 50)

        expect(order.valid?).to be true
      end
    end

    context 'when inventory is not enough' do
      it 'order is invalid' do
        warehouse = double('warehouse')
        expect(warehouse).to receive(:has_enough?).with(51).and_return(false)

        order = Order.new(warehouse, 51)

        expect(order.valid?).to be false
      end
    end
  end
end
