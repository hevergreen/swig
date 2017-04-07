require 'swig_assert'
require 'cpp11_shared_ptr_upcast'


include Cpp11_shared_ptr_upcast

# non-overloaded
simple_assert_equal( 7, derived_num1(Derived.new(7)) )
simple_assert_equal( 7, derived_num2([Derived.new(7)]) )
simple_assert_equal( 7, derived_num3({0 => Derived.new(7)}) )

simple_assert_equal(-1, base_num1(Derived.new(7)) )
simple_assert_equal(-1, base_num2([Derived.new(7)]) )
simple_assert_equal(-1, base_num3({0 => Derived.new(7)}) )

# overloaded
simple_assert_equal( 7, derived_num(Derived.new(7)) )
simple_assert_equal( 7, derived_num([Derived.new(7)]) )
simple_assert_equal( 7, derived_num({0 => Derived.new(7)}) )

simple_assert_equal(-1, base_num(Derived.new(7)) )
simple_assert_equal(-1, base_num([Derived.new(7)]) )
simple_assert_equal(-1, base_num({0 => Derived.new(7)}) )
