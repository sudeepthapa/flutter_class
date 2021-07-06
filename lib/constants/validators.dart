class Validators {

  static validateText(text) {
    if (text == null || text.isEmpty) {
      return 'Please insert something.';
    } else {
      return null;
    }
  }

}