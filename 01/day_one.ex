nums = [1,1,2,2]
max =  div((length(nums)),2)

defmodule Captcha do
    def check(sum, index, nums, max) do
        curr = Enum.at(nums, index)
        nIdx = index+1
        if nIdx >= length(nums) do 
           nIdx = 0
        end
        next = Enum.at(nums, nIdx)
        if curr == next do
            IO.puts(sum + curr + next)
            # sum = sum + curr + next
        end
        if index >= length(nums)-1 do
            sum
        end
        check(sum, index+1, nums, max) 
    end 
end

Captcha.check(0, 0, nums, max)