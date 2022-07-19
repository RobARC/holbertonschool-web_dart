// Write a dart Program That given an argument ,determine if its positive or negative

void main(List<String> args) {
  var number = int.parse(args[0]);
  if (number < 0) print('$number is negative');
  else if (number > 0) print('$number is positive');
  else print('$number is zero');
}