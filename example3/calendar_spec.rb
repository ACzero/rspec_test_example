current_dir = File.dirname(__FILE__)

require 'bundler/setup'
Bundler.require
require "#{current_dir}/../spec/spec_helper.rb"
require "#{current_dir}/calendar.rb"

RSpec.describe Calendar do
  describe '.today_day_off?' do
    context 'when today is sunday' do
      before do
        allow(Date).to receive(:today).and_return(Date.parse('2017-07-23'))
      end

      it 'return true' do
        expect(Calendar.new.today_day_off?).to be true
      end
    end

    context 'when today is monday' do
      before do
        allow(Date).to receive(:today).and_return(Date.parse('2017-07-24'))
      end

      it 'return false' do
        expect(Calendar.new.today_day_off?).to be false
      end
    end
  end
end
