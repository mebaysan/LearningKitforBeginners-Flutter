void main() {
  int a = 150;
  int b = 0;
  int result;
  try {
    result = a ~/ b; //  ~/ -> mesela 4.6 gelrse 5'e 4.3 gelirse 4'e yuvarlayacak
  } catch (e) {
    print(e);
  }
}
