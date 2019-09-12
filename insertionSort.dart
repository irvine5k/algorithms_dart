void insertionSort(List list, int len) {
  if(list == null || len < 1) return;

  insertionSort(list, len - 1);

  int last = list[len - 1];
  int j = len - 2;

  while(j >= 0 && list[j] > last) {
    list[j + 1] = list[j];
    j--;
  }

  list[j + 1] = last;
}

main() {
  List list = [3, 4, 1, 5, 7, 10, 9];

  insertionSort(list, list.length);

  print(list);
}
