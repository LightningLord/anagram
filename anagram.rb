require 'debugger'
def assert_equal(expression, result)
  if expression == result
    "TRUE"
  else
    "Expected #{expression} to equal #{result}"
  end
end

def anagram?(s1, s2)
  freq_hash(s1) == freq_hash(s2)
end

def freq_hash(word)
  result = Hash.new(0)
  word.split("").each {|char| result[char] += 1}
  result
end

def anagrams_sort(words)
  result = Hash.new([])
  words.each  do |word|
    result[freq_hash(word)] += [word]
  end
  result.values
end
p assert_equal(anagram?("cat", "tac"), true)
p assert_equal(anagram?("dog", "gdo"), true)
p assert_equal(anagram?("madam", "mmaad"), true)
p assert_equal(anagram?("madam", "sires"), false)
words = ["dog", "god", "cat", "sir", "cta", "rise", "sire"]


[
["dog", "god"],
["cat", "cta"],
["sir"],
["rise", "sire"]
]
p anagrams_sort(words)
