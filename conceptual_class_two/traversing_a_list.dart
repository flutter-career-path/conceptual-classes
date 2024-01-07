void main() {
  Map<int, String> myMap = {
    1: "one",
    2: "two"
  };

  // Time complexity of the following operations in O(1+1)
  print(myMap[1]);

  traversingAList([1,2,3,4,5]);
}

// Time complexity of the function will be O(n)
void traversingAList(List<int> lst) {
  for (int i =0; i< lst.length; i++) {
    print("The $i th item of the list is : ${lst[i]}");
  }
}