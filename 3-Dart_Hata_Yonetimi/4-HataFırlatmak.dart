void setAge(int age) {
  if (age <= 13) {
    throw new Exception("Yaşınız 13'den büyük olmalıdır!");
  }
}
