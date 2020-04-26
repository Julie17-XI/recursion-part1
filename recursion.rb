def sum_to(n)
    return nil if n < 0
    return 1 if n == 1
    n + sum_to(n-1)
end

def add_numbers(arr)
    return nil if arr.empty?
    return arr.first if arr.length ==1

    arr.first + add_numbers(arr[1..-1])
end

def gamma_fnc(n)
    return nil if n <= 0
    return 1 if n ==1

    ( n - 1 ) * gamma_fnc( n - 1 )
end

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    flavors.first == favorite || ice_cream_shop(flavors[1..-1], favorite)
end

def reverse(str)
    return "" if str.empty?
    return str if str.length == 1

    reverse(str[1..-1]) + str[0]
end

if $PROGRAM_NAME == __FILE__
    p sum_to(5) #=>15
    p sum_to(9) #=>45
    p sum_to(-8) #=> nil
    p add_numbers([1,2,3,4]) #=>10
    p add_numbers([3]) #=>3
    p add_numbers([-80,34,7]) #=>-39
    p add_numbers([]) #=> nil
    p gamma_fnc(0) #=> nil
    p gamma_fnc(1) #=> 1
    p gamma_fnc(4) #=> 6
    p gamma_fnc(8) #=> 5040
    p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') #=>f
    p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') #=>t
    p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') #=>f
    p ice_cream_shop(['moose tracks'], 'moose tracks') #=>t
    p ice_cream_shop([], 'honey lavender') #=>f
    p reverse("house") #=>'esuoh'
    p reverse("q") #=>'q'
    p reverse("") #=>""
end