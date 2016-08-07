require_relative 'test_helper'


describe 'nginx installed' do
  it 'has nginx service running' do
    expect(service('nginx')).to be_running
  end

end