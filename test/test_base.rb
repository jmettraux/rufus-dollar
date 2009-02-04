
#
# Testing rufus-dollar
#
# John Mettraux at openwfe.org
#
# Mon Feb 18 23:30:37 JST 2008
#

$:.unshift File.dirname(__FILE__) + '/../lib/'

require 'test/unit'
require 'rufus/dollar'


module TestBase

  protected

  def dotest (text, dict, target)

    result = Rufus.dsub(text, dict)

    assert_equal target, result
  end
end

