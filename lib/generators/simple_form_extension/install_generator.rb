module SimpleFormExtension
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy SimpleFormExtension files"
      source_root File.expand_path('../templates', __FILE__)

      def bundle
        Bundler.with_clean_env do
          run 'bundle install'
        end
      end
    end
  end
end
