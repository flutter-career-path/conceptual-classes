int binarySearch(List<int> sortedList, int target) {
  int l = 0;
  int r = sortedList.length - 1;

  while (l <= r){
    int m = (l+r) ~/ 2;
    if(sortedList[m] == target) {
      return m;
    } else if(sortedList[m] < target) {
      l = m +1;
    } else {
      r = m -1;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [1,2,3,4,5, 8, 100, 108, 120];
  int target = 118;
  int result = binarySearch(numbers, target);
  print(result);
}