fibonnacci(int n) {
  return n < 2 ? n : (fibonnacci(n - 1) + fibonnacci(n - 2));
}

main() {
  print(fibonnacci(20));
}