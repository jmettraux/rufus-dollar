
#
# Testing rufus-dollar
#
# John Mettraux at openwfe.org
#
# Mon Oct  9 22:19:44 JST 2006
#

require 'test/unit'
require File.dirname(__FILE__) + '/test_base'


class DollarTest < Test::Unit::TestCase
  include TestBase

  #def setup
  #end

  #def teardown
  #end

  def test_0

    dict = {}

    dict['renard'] = 'goupil'
    dict['cane'] = 'oie'
    dict['oie blanche'] = 'poule'

    dotest "le petit renard", dict, "le petit renard"
    dotest "le petit {renard}", dict, "le petit {renard}"
    dotest "le petit ${renard}", dict, "le petit goupil"
    dotest "le petit ${renard} noir", dict, "le petit goupil noir"

    dotest "la grande ${${cane} blanche}", dict, "la grande poule"

    dotest "le ${renard} et la ${cane}", dict, "le goupil et la oie"
      #
      # excuse my french...

    dotest "le \\${renard} encore", dict, "le \\${renard} encore"

    dotest "", dict, ""

    dotest("""
""", dict, """
""")
    dotest(""" 
""", dict, """ 
""")
  end

  def test_1

    dict = {}
    dict['x'] = 'y'

    dotest "${x}", dict, "y"
    dotest "\\${x}", dict, "\\${x}"
  end

  def test_2

    dict = {}
    dict['A'] = 'a'
    dict['B'] = 'b'
    dict['ab'] = 'ok'

    dotest "${${A}${B}}", dict, "ok"
  end

  #def test_3
  #  assert_equal OpenWFE.unescape("toto and ${toto}"), "toto and ${toto}"
  #  assert_equal OpenWFE.unescape("toto & \${toto}"), "toto & ${toto}"
  #  assert_equal "toto & \\${toto}", "toto & ${toto}"
  #  #assert_equal OpenWFE.unescape('toto & \${toto}'), "toto & ${toto}"
  #end

end
