require 'spec_helper'

describe 'route53::default' do
  let(:chef_run) do
    runner = ChefSpec::Runner.new.converge described_recipe
  end

  %w(libxml2-dev libxslt1-dev).each do |package_name|
    it "should install #{package_name}" do
      expect(chef_run).to install_package(package_name)
    end
  end

  it "should install fog into Chef's embedded ruby environment" do
    expect(chef_run).to install_chef_gem('fog')
  end
end
