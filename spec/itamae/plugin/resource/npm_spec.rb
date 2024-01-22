require "spec_helper"

describe Itamae::Plugin::Resource::Npm do
  describe "chown node modules attribute" do
    let(:result) { double("result", exit_status: 0, stdout: "some output") }
    let(:backend) { spy("backend", run_command: result) }
    let(:runner) { double("runner", backend: backend) }
    let(:recipe) { double("recipe", runner: runner) }
    let(:resource) { Itamae::Plugin::Resource::Npm.new(recipe, "test-service") }

    it "chowns by default" do
      resource.set_current_attributes
      expect(backend).to have_received(:run_command).with(/sudo chown/, anything).exactly(:once)
    end

    it "turns off when set" do
      resource.attributes.chown_node_modules = false
      resource.set_current_attributes
      expect(backend).to have_received(:run_command).at_least(:once) do |cmd|
        expect(cmd).not_to match(/sudo chown/)
      end
    end
  end
end
