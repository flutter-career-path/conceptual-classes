int fibonacci(int index) {
  if(index <=1) {
    return index;
  }

  return fibonacci(index-1) + fibonacci(index-2);
}

void main() {
  int index = 45;
  int result = fibonacci(index);

  print(result);
}