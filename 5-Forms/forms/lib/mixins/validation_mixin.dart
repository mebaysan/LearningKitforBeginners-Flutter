class ValidationMixin {
  String validateFirstName(String value) {
    if (value.length < 2) {
      return "firstname can't less then 2 word";
    }
    return null;
  }

  String validateLastName(String value) {
    if (value.length < 2) {
      return "last can't less then 2 word";
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains("@")) {
      return "email address entered is not valid";
    }
    return null;
  }
}
