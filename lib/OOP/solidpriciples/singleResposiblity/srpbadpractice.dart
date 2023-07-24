/// Single responsibility principle

/// a class should only be responsible for one thing

///todo:  BAD PRACTICE
class Result {
  checkResult(int rolno) {
    bool isRollnoValidate = isRollnovalidate();

    if (isRollnoValidate) {
      ResultModel resultModel = searchResult();
      showResult(resultModel);
    }
  }

  searchResult() {}

  showResult(ResultModel model) {}

  isRollnovalidate() {
    return true;
  }
}

class ResultModel {}
