desc 'Add an item to a person\'s list for the next time you talk to them.'
long_desc '''

# add an item to LH\'s list

# You must enclose the item with quote marks (double or single).

    <tt>ntwm new -n LH "demo new feature"</tt>

    <tt>ntwm new -n LH "ask for code review"</tt>

'''
arg_name 'item_to_add'
command :new do |c|
    c.desc 'name of person to list item against.'
    c.flag [:name, :n]
    c.default_value false
    c.action do |global_options,options,args|
        raise 'Please specifiy what you want to add.' if args.empty?
        raise 'Please enclose the item with quote marks (double or single).' if args.size >= 2
        raise 'Please specify whom this is for ?' if options[:name].nil?

        puts "adding \"#{args[0]}\" to #{options[:name]}'s list."
    end
end
