require 'spec_helper'
describe 'omd' do

  context 'with defaults for all parameters' do
    it { should contain_class('omd') }
  end
end
