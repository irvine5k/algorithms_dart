factorial(int n) {
  if(n == 0) return 1;
  return n * factorial(n - 1);
}

main(List<String> args) {
  print(factorial(3));
  print(factorial(0));
  print(factorial(4));
}