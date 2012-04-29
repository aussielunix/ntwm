desc 'Mark an item as done.'
long_desc '''
This is used to mark items as completed after you have caught up with that person.

# Mark an item in LH\'s list as done

# You must enclose the item with quote marks (double or single).

    <tt>ntwm done -n LH "demo new feature"</tt>

    <tt>ntwm done -n LH \'ask for code review\'</tt>


'''

command :done do |c|
    c.desc 'name of person to remove item(s) from.'
    c.flag [:name,:n]
    c.default_value false
    c.action do |global_opions, options,args|
        raise 'Please specify whom this is for ?' if options[:name].nil?
        raise 'Please specifiy what you want to mark as done.' if args.empty?
        raise 'Please enclose the item with quote marks (double or single).' if args.size >= 2
        #TODO: raise error if item is not in list against this name
        puts "mark \"#{args[0]}\" for #{options[:name]} as done"
    end
end
