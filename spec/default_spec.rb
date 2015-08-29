require 'spec_helper'

describe 'tmux::default' do
  context 'when the installation method is source' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['tmux']['install_method'] = 'source'
      end.converge('tmux::default')
    end

    it 'includes the source recipe' do
      expect(chef_run).to include_recipe('tmux::_source')
    end

    it 'does not include the package recipe' do
      expect(chef_run).to_not include_recipe('tmux::_package')
    end
  end

  context 'when the installation method is package' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['tmux']['install_method'] = 'package'
      end.converge('tmux::default')
    end

    it 'includes the package recipe' do
      expect(chef_run).to include_recipe('tmux::_package')
    end

    it 'does not include the source recipe' do
      expect(chef_run).to_not include_recipe('tmux::_source')
    end
  end

  context 'on RHEL' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'redhat', version: '6.3').converge('tmux::default') }

    it 'sets the installation method to `source`' do
      expect(chef_run.node['tmux']['install_method']).to eq('source')
    end
  end

  context 'on debian' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '12.04').converge('tmux::default') }

    it 'sets the installation method to `package`' do
      expect(chef_run.node['tmux']['install_method']).to eq('package')
    end
  end

  context 'when the installation method is set to something invalid' do
    before do
      allow(Chef::Application).to receive(:fatal!).and_return(nil)
    end

    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['tmux']['install_method'] = 'not_real'
      end
    end

    it 'exits fatally' do
      expect(Chef::Application).to receive(:fatal!).once
      chef_run.converge('tmux::default')
    end
  end

  context 'usual business' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '12.04').converge('tmux::default') }

    it 'creates the tmux conf' do
      expect(chef_run).to create_template('/etc/tmux.conf')
    end

    it 'writes the correct content' do
      template = chef_run.template('/etc/tmux.conf')
      expect(template.owner).to eq('root')
      expect(template.group).to eq('root')
      expect(template.mode).to eq('0644')
    end
  end
end
