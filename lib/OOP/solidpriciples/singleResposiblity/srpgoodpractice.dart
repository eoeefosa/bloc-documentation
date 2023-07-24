/// Good Single REsposibilty
class Result {
  checkResult(int rollno) {
    bool isRollnoValidate = Validate().isRollnovalidate();
    if (isRollnoValidate) {
      ResultModel resultModel = NetworkApi().searchResult();
      Printing().showResult(resultModel);
    } else {
      return "Invalid rollno";
    }
  }
}

class Validate {
  isRollnovalidate() {
    return true;
  }
}

class ResultModel {}

class Printing {
  showResult(ResultModel model) {}
}

class NetworkApi {
  searchResult() {
    return ResultModel();
  }
}
