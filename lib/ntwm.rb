module Ntwm
    require 'ntwm/version'
    #FIXME: remove before releasing code
    require 'pp'

    # Borrowed from https://github.com/ripienaar/gwtf
    # helper to load commands from many files in lib/ntwm/commands
    def self.each_command
        commands_dir = File.join(File.dirname(__FILE__), "ntwm", "commands")
        Dir.entries(commands_dir).grep(/_command.rb$/).sort.each do |command|
            yield File.join(commands_dir, command)
        end
    end
end
