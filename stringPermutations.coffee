###
This is a small example of how CoffeeScript may be used to solve a problem I
have previously worked on in Javascript. The problem is as follows:

Generate all permutations of a given string.
###

permutations = (str) ->
  return [str] if str.length < 2

  letter = str[0]
  lower_perms = permutations str[1..]
  output = []

  for perm in lower_perms
    for i in [0..perm.length]
      output.push(perm[0...i] + letter + perm[i..])

  output

console.log(permutations "test")
