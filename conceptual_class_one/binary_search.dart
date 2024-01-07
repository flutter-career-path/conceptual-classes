// Time complexity of the following function is O(log(n))
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

// Time complexity of the function is O(n)
int normalSearch(List<int> sortedList, int target) {
  for (int i = 0; i<sortedList.length; i++) {
    if (sortedList[i] == target) {
      return i;
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