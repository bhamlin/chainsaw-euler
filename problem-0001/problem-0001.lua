--[[

==Multiples of 3 and 5
--Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get
3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

]]

-- Returns true if i is evenly divisible by j
function isDivisible(i, j)
    q = i % j
    if q == 0 then
        return true
    else
        return false
    end
end

-- Returns true if i is evenly divisible by any values in modulusList
function isDivisibleList(i, modulusList)
    value = false
    for _, j in pairs(modulusList) do
        value = value or isDivisible(i, j)
    end
    return value
end

TEST_VALUES = {3, 5}
RESULT = 0

for u = 1, (1000 - 1) do
    if isDivisibleList(u, TEST_VALUES) then
        RESULT = RESULT + u
    end
end

print(RESULT)
