require 'rubygems'
require 'test/unit'
require 'shoulda'

require File.expand_path('../../lib/namespaces.rb', __FILE__)

module A
  module B
    module C
      class X
        include Namespaces
        extend Namespaces
      end
    end
  end
end

class ModulesTest < Test::Unit::TestCase
  should "return modules array when called as class method" do
    assert_equal [A::B::C, A::B, A], A::B::C::X.namespaces
  end
  
  should "return modules array when called as instance method" do
    assert_equal [A::B::C, A::B, A], A::B::C::X.new.namespaces
  end
end
