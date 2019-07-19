

require 'byebug'
# # def my_min(nums)      # ==> Time Complexity == Quadratic
# #                       # ==> Space Complexity == O(n)
# #   min = nums[0]
# #   (0...nums.length).each do |start|
# #     first = nums[start
# #     (start...nums.length).each do |ending|
# #       other = nums[ending]
# #       if other < min
# #         min = other
# #       end
# #     end
# #   end
# #   min
# # end

# # p my_min(list = [ 0, 3, 5, 4, -5, 10, 1, 90 ])


# # def my_min(nums) # ==> This method should have a liner time complexity.
# #   min = nums[0]  # ==> Space Complexity == O(n)
# #   nums.each do |num|
# #     if num < min 
# #       min = num
# #     end
# #   end
# #   min
# # end

# 


def largest_contigious_subsum(list)
  debugger
  lcs = list[0] 
  current_sum = list[0]
  puts lcs
  list.each_with_index do |num, i|
    current_sum += list[i + 1]
    if current_sum > lcs 
      lcs = current_sum
    end
  end
  lcs 
end

puts largest_contigious_subsum([5,3,4]) #=> 12 


#______________________________________________________________________________

# def first_anagram?(str1, str2)
#   if str1.length != str2.length
#     return false
#   end

#   anagrams = []

#   str1.length times do
#     anagram = str1.push(str1.shift)
#     anagrams << anagram
#   end
# end

