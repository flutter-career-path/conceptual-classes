
int fibonacci(int index) {
  if(index <=1) {
    return index;
  }
  print("I am at $index");

  return fibonacci(index-1) + fibonacci(index-2);
}

void main() {
  int index = 3;
  int result = fibonacci(index);

  print(result);
}