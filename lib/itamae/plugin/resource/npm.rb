require "itamae/resource/base"

module Itamae
  module Plugin
    module Resource
      class Npm < Itamae::Resource::Base
        class Error < StandardError; end
        define_attribute :action, default: :install
        define_attribute :package_name, type: String, default_name: true
        define_attribute :version, type: String

        def set_current_attributes
          root_local_node_modules_dir
          check_npm_availability
          check_remote_package_existance
       
          current.exist = check_global_package_existance.exit_status == 0
        end

        def action_install
          unless current.exist
            installer_cmd = is_version_specified ? ["npm", "i", "-g", "#{attributes.package_name}@#{attributes.version}"] : ["npm", "i", "-g", attributes.package_name]
            run_command(installer_cmd)
          end
        end
        
        private
        
        def root_local_node_modules_dir
          run_command("sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}")
        end

        def check_npm_availability
          if run_command("which npm", error: false).exit_status != 0
            raise "`npm` command is not available. Please install node of the latest version."
          end
        end
        
        def check_global_package_existance
          run_command(["npm", "list", "-g", attributes.package_name], error: false)
        end
        
        def check_remote_package_existance
          if run_command(["npm", "s", attributes.package_name]).stdout.include?('No match found')
            raise "Specified package is not found. Confirm the package name or existance."
          end
        end
        
        def is_version_specified
          attributes.version != ''
        end
      end
    end
  end
end
