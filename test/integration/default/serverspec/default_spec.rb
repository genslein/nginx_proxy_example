require_relative 'test_helper'


describe 'nginx installed' do
  it 'has nginx service running' do
    expect(service('nginx')).to be_running
  end

  it 'can reach bing search' do
    expect(command('curl localhost/bing/search?q=hello').stdout).to_not eq ''
  end

  it 'can reach weather.com Atlanta' do
    expect(command('curl localhost/weather/today/l/USGA0028:1:US').stdout).to_not eq ''
  end
end