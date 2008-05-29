require 'fileutils'

module PluginGemifier
  class Main
    def self.run(*plugins)
      current_path = File.expand_path('.')
      current_path = File.expand_path('..') if current_path =~ /plugins$/
      current_path = File.expand_path(File.join('..', '..')) if current_path =~ /vendor$/

      plugin_path  = File.join(current_path, 'plugins')
      gem_path     = File.join(current_path, 'gems')

      plugins.each do |plugin|
        local_plugin_path = File.join(plugin_path, plugin)
        local_gem_path    = File.join(gem_path, "#{plugin}-0.0.1")

        if File.exists?(local_plugin_path)
          FileUtils.mkdir_p gem_path
          FileUtils.mv local_plugin_path, local_gem_path
          FileUtils.mkdir_p File.join(local_gem_path, 'rails')
          FileUtils.mv File.join(local_gem_path, 'init.rb'), File.join(local_gem_path, 'rails', 'init.rb')
          puts "Plugin gemified:  #{plugin}"
        else
          puts "Plugin not found: #{plugin}"
        end
      end
    end
  end  # class Main
end  # module PluginGemifier