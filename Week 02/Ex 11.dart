//Write a program that takes a list of numbers for example
// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list. For practice, write this
// code inside a function.

void main() {
  List<int> a = [5, 10, 15, 20, 25];
  List<int> b = [];
  b.add(a[0]);
  b.add(a[a.length - 1]);
  print(b);
}
