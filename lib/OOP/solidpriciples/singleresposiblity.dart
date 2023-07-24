/// Single responsibility principle

/// a class should only be responsible for one thing

/// BAD PRACTICE
class Result {
  checkResult(int rolno) {
    bool isRollnoValidate = isRollnovalidate();
  }

  isRollnovalidate() {
    return true;
  }
}
