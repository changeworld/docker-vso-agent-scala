require 'spec_helper'

describe 'apt-get' do
  describe package('curl') do
    it { should be_installed }
  end

  describe package('default-jdk') do
    it { should be_installed }
  end

  describe package('git') do
    it { should be_installed }
  end

  describe package('nodejs') do
    it { should be_installed }
  end

  describe package('npm') do
    it { should be_installed }
  end

  describe package('sbt') do
    it { should be_installed }
  end

  describe package('scala') do
    it { should be_installed }
  end

  describe package('wget') do
    it { should be_installed }
  end

  # Update-alternatives nodojs to node
  describe command('which node') do
    its(:exit_status) { should eq 0 }
  end

  # Update npm to the latest version?
  describe command('npm -v') do
    its(:stdout) { should_not match /1.3.10/ }
  end
end
