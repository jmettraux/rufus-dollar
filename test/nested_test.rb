
#
# Testing rufus-dollar
#
# John Mettraux at openwfe.org
#
# Mon Feb 18 23:32:12 JST 2008
#

require File.dirname(__FILE__) + '/test_base'


class NestedTest < Test::Unit::TestCase
  include TestBase

  #def setup
  #end

  #def teardown
  #end

  def test_0

    dotest " ${a${b}e} ", {}, "  "
    dotest " ${a{b}e} ", {}, "  "
    dotest "${a{b}e}", {}, ""
    dotest " \\${a{b}e} ", {}, " \\${a{b}e} "
    dotest "{a${b}c}", { "b" => 2 }, "{a2c}"
  end
end
