
# rufus-dollar

A one-method library for substituting ${stuff} in text strings.


## getting it

    gem install rufus-dollar


## usage

    require 'rubygems'
    require 'rufus/dollar'

    h = {
      'name' => 'Fred Brooks',
      'title' => 'Silver Bullet',
      'left' => 'na',
      'right' => 'me',
    }

    puts Rufus::dsub "${name} wrote '${title}'", h
      # => "Fred Brooks wrote 'Silver Bullet'"

    # dollar notations are nestable

    puts Rufus::dsub "${${left}${right}}", h
      # => "${name}" => "Fred Brooks"

    # prefixing the key with a ' or a " makes it quotable

    puts Rufus::dsub "${name} wrote ${'title}", h
      # => 'Fred Brooks wrote "Silver Bullet"'


## dependencies

None.


## mailing list

The rufus-ruby list:

http://groups.google.com/group/rufus-ruby


## issue tracker

https://github.com/jmettraux/rufus-dollar/issues


## source

http://github.com/jmettraux/rufus-dollar

    git clone git://github.com/jmettraux/rufus-dollar.git


## author

John Mettraux, jmettraux@gmail.com
http://jmettraux.wordpress.com


## the rest of Rufus

http://rufus.rubyforge.org


## license

MIT

