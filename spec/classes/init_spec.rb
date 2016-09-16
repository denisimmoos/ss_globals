require 'spec_helper'
describe 'ss_globals' do

  context 'with defaults for all parameters' do
    it { should contain_class('ss_globals') }
  end
end
