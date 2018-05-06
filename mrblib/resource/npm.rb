module ::MItamae
  module Plugin
    module Resource
      class Npm < ::MItamae::Resource::Base
        define_attribute :action, default: :install
        define_attribute :package_name, type: String, default_name: true
        define_attribute :version, type: String

        self.available_actions = [:install, :uninstall, :upgrade]
      end
    end
  end
end
