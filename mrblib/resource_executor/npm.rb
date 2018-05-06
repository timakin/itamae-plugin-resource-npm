module ::MItamae
  module Plugin
    module ResourceExecutor
      class Npm < ::MItamae::ResourceExecutor::Base
        def apply
          ensure_npm_availability

          if desired.installed
            unless current.installed
              install!
              updated!
            end
          else
            uninstall! if current.installed
          end
        end

        private

        def set_current_attributes(current, action)
          current.installed = installed?
        end

        def set_desired_attributes(desired, action)
          case action
          when :install, :upgrade
            desired.installed = true
          when :uninstall
            desired.installed = false
          end
        end

        def install!
          if run_command("npm search #{attributes.package_name} | grep 'No matches'", error: false).exit_status == 0
            raise "npm package does not exists. "
          end

          cmd = "npm i -g #{attributes.package_name}"
          cmd.concat("@#{attributes.version}") if attributes.version

          run_command(cmd)
        end

        def uninstall!
          cmd = "npm uninstall -g #{attributes.version}"
          cmd.concat("@#{attributes.version}") if attributes.version

          run_command(cmd)
        end

        def installed?
          cmd = "npm list -g #{attributes.package_name}"
          cmd.concat("@#{attributes.version}") if attributes.version

          run_command(cmd, error: false).exit_status == 0
        end

        def ensure_npm_availability
          if run_command("hash npm &>/dev/null", error: false).exit_status != 0
            raise "`npm` command is not available. Please install node of the latest version."
          end
        end
      end
    end
  end
end
