###
This is a small example of how CoffeeScript may be used to solve a problem I
have previously worked on in Javascript. The problem is as follows:

Generate all permutations of a given string.
###

permutations = (str) ->
  return [str] if str.length < 2

  letter = str[0]
  lower_perms = permutations str[1..]
  output = for perm in lower_perms
    for i in [0..perm.length]
      perm[0..i] + letter + perm[i..]


permutations "test"

###
For reference, here is the original Javascript:

var permutations = function (str) {
  if (str.length < 2) {
    return [str];
  }

  var letter = str[0];
  var lower_perms = permutations(str.slice(1));
  var output = [];

  lower_perms.forEach(function (perm) {
    for (var i = 0; i <= perm.length; i++) {
      output.push(perm.slice(0, i) + letter + perm.slice(i));
    }
  });

  return output;
};
###
