void main() {
  List<int> lst = [2,3,1,4];
  bubbleSort(lst);
  print(lst);
}

// Time complexity of the following function is O(n2)
void bubbleSort(List<int> lst) {
  for (int i = 0; i < lst.length - 1; i++) {
    for (int j = 0; j< lst.length - i -1; j ++ ) {
      if(lst[j] > lst[j+1]) {
        int temp = lst[j];
        lst[j] = lst[j+1];
        lst[j+1] = temp;
      }
    }
  }
}