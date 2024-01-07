
void main() {
  List<int> lst = [2,3,1,4];
  List<int> sortedList = mergeSort(lst);
  print(lst);
  print(sortedList);
}

List<int> mergeSort(List<int> list) {
  if( list.length <= 1) {
    return list;
  }

  int m = list.length ~/ 2;
  List<int> l = list.sublist(0, m);
  List<int> r = list.sublist(m);

  l = mergeSort(l);
  r = mergeSort(r);

  return merge(l, r);
}

List<int> merge(List<int> l, List<int> r) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;

  while(leftIndex < l.length && rightIndex < r.length) {
    if (l[leftIndex] < r[rightIndex]) {
      result.add(l[leftIndex]);
      leftIndex++;
    } else {
      result.add(r[rightIndex]);
      rightIndex++;
    }
  }

  result.addAll(l.sublist(leftIndex));
  result.addAll(r.sublist(rightIndex));

  return result;
}