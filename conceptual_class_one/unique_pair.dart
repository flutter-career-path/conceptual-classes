
// Time complexity of this function is O(n2)
List<List<int>> findPairs(List<int> list) {
  List<List<int>> uniquePairs = [];

  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j < list.length; j++) {
      List<int> pair = [list[i], list[j]];
      uniquePairs.add(pair);
    }
  }
  return uniquePairs;
}

void main() {
  List<int> numbers = [1, 2, 3, 4];
  List<List<int>> uniquePairs = findPairs(numbers);
  print(uniquePairs);
}
