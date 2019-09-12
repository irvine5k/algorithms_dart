void bubbleSort(List list, int length) {
  if(list == null || length < 1) return;

  for(int i = 0; i < length; i++) {
    if(list[i] > list[i + 1]) {
      swap(list, i);
    }
  }

  bubbleSort(list, length - 1);
}

void swap(List list, int index) {
  final aux = list[index];
  list[index] = list[index + 1];
  list[index + 1] = aux;
}

main() {
  List list = [3, 4, 1, 5, 7, 10, 9];

  bubbleSort(list, list.length - 1);

  print(list);
}