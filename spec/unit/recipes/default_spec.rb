#
# Cookbook Name:: heatlamp
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'heatlamp::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    # Is MySQL installed?
    it 'installs mysql components' do
      expect(chef_run).to install_package('mysql-server')
      expect(chef_run).to install_package('mysql')
  	end

  end
end


