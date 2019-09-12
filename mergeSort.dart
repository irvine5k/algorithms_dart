void sort(List<Comparable> list) {
  final aux = List<Comparable>(list.length);
  sortHighLow(list, aux, 0, list.length - 1);
  assert(isSorted(list));
}

void sortHighLow(List<Comparable> list, List<Comparable> aux, int low, int high){
  if(high <= low) return;

  int mid = low + ((high - low ) ~/ 2);

  sortHighLow(list, aux, low, mid);
  sortHighLow(list, aux, mid + 1, high);

  merge(list, aux, low, mid, high);

}

void merge(List<Comparable> list, List<Comparable> aux, int low, int mid, int high) {
  assert(isSortedInRange(list, low, mid));
  assert(isSortedInRange(list, mid + 1, high));

  for(int k = low; k <= high; k++) {
    aux[k] = list[k];
  }

  int i = low, j = mid + 1;
  for (int k = low; k <= high; k++) {
    if(i > mid) {
      list[k] = aux[j++];
    } else if(j > high){
      list[k] = aux[i++];
    } else if(less(aux[j], aux[i])){
      list[k] = aux[j++];
    } else {
      list[k] = aux[i++];
    }
  }
}

bool less(Comparable v, Comparable w) {
  return (v.compareTo(w) < 0);
}

bool lessWithComparer(var c, Object v, Object w) {
  return (c.compareTo(v, w) < 0);
}

void swap(List list, int i, int j) {
  var aux = list[i];
  list[i] = list[j];
  list[j] = aux;
}

 bool isSorted(List<Comparable> a) {
    return isSortedInRange(a, 0, a.length-1);
  }

bool isSortedInRange(List<Comparable> list, int low, int high) {
  for(int i = low + 1; i <= high; i++) {
    if(less(list[i], list[i - 1])) {
      return false;
    }
  }

  return true;
}

bool isSortedInRangeWithComparer(List<Object> list, var c, int low, high) {
  for(int i = low + 1; i <= high; i++) {
    if(lessWithComparer(c, list[i], list[i-1])) {
      return false;
    }
  }
  
  return true;
}

main() {
  List<Comparable> list = [9, 8, 7, 6, 5, 10];

  sort(list);

  print(list);
}