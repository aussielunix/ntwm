desc 'List known names or List items stored against a name.'
long_desc '''
Retrieve a list of names in the system or a list of items stored against a name.
If no name is given then it lists all known names.

# add an item to LH\'s list

    <tt>ntwm new LH "demo new feature"</tt>

# list all item\'s listed against LH

    <tt>mtwm list LH</tt>

# List all known names

    <tt>ntwm list</tt>

'''
arg_name '[name]'

command [:list,:l] do |c|
    c.action do |global_options,options,args|
        if args.empty?
            puts "Listing all known names"
        else
            puts "listing items stored against #{args[0]}"
        end
    end
end
