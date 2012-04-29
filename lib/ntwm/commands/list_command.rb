desc 'List known names or List items stored against a name.'
long_desc '''
Retrieve a list of names in the system or a list of items stored against a name.
If no name is given then it lists all known names.

# list all item\'s listed against LH

    <tt>ntwm list -n LH</tt>

    <tt>ntwm list --name=LH</tt>

# List all known names

    <tt>ntwm list</tt>

'''
command [:list,:l] do |c|
    c.desc "name of person's items you want to list."
    c.flag [:name, :n]
    c.default_value false

    c.action do |global_options,options,args|
        if options[:name].nil?
            puts "Listing all known names"
        else
            puts "listing items stored against #{options[:name]}"
        end
    end
end
