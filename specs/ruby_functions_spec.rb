require( 'minitest/autorun' )

require_relative( '../ruby_functions_practice' )

class Functions_Practice < MiniTest::Test

  def test_return_10()
    return_10_result = return_10()
    assert_equal( 10, return_10_result )
  end

  def test_add()
    add_result = add( 1, 2 )
    assert_equal( 3, add_result )
  end

  def test_subtract()
    subtract_result = subtract( 10, 5 )
    assert_equal( 5, subtract_result )
  end

  def test_multiply()
    multiply_result = multiply( 4, 2 )
    assert_equal( 8, multiply_result )
  end

  def test_divide()
    divide_result = divide( 10, 2 )
    assert_equal( 5, divide_result )
  end

  def test_length_of_string()
    test_string = "A string of length 21"
    length_of_string = length_of_string( test_string )
    assert_equal( 21, length_of_string )
  end

  def test_join_string()
    string_1 = "Mary had a little lamb, "
    string_2 = "it's fleece was white as snow"
    joined_string = join_string( string_1, string_2 )
    assert_equal( "Mary had a little lamb, it's fleece was white as snow", joined_string )
  end

  def test_add_string_as_number()
    add_result = add_string_as_number( "1", "2" )
    assert_equal( 3, add_result )
  end

  def test_number_to_full_name()
    first_month_string = number_to_full_month_name( 1 )
    third_month_string = number_to_full_month_name( 3 )
    ninth_month_string = number_to_full_month_name( 9 )
    assert_equal( "January", first_month_string )
    assert_equal( "March", third_month_string ) 
    assert_equal( "September", ninth_month_string )
  end

  def test_substring()
    first_month_string = number_to_short_month_name( 1 )
    third_month_string = number_to_short_month_name( 3 )
    ninth_month_string = number_to_short_month_name( 9 )
    assert_equal( "Jan", first_month_string )
    assert_equal( "Mar", third_month_string )
    assert_equal( "Sep", ninth_month_string )
  end

  # #Further

  #Given the length of a side of a cube calculate the volume 
  def test_volume_of_cube()
    result = volume_of_cube(4)
    assert_equal(64,result)
  end

  #Given the radius of a sphere calculate the volume
  def test_volume_of_sphere()
    result = volume_of_sphere(4)
    assert_equal(268.08, result)
  end

  #You can add your own converters
  def test_fahrenheit_to_celsius()
    result1 = farenheit_to_celsius(32)
    result2 = farenheit_to_celsius(-40)
    assert_equal(0, result1)
    assert_equal(-40, result2)
  end

  def test_is_palindrome?()
    palindrome = 98589
    not_palindrome = 27381
    assert_equal(true,is_palindrome?(palindrome))
    assert_equal(false,is_palindrome?(not_palindrome))
  end

end