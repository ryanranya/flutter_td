class HomePageSurroundModel {
  Null invalidParams;
  String isHasResult;
  String msg;
  List<HomePageSurroundResult> result;
  String state;

  HomePageSurroundModel(
      {this.invalidParams,
        this.isHasResult,
        this.msg,
        this.result,
        this.state});

  HomePageSurroundModel.fromJson(Map<String, dynamic> json) {
    invalidParams = json['invalidParams'];
    isHasResult = json['isHasResult'];
    msg = json['msg'];
    if (json['result'] != null) {
      result = new List<HomePageSurroundResult>();
      json['result'].forEach((v) {
        result.add(new HomePageSurroundResult.fromJson(v));
      });
    }
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['invalidParams'] = this.invalidParams;
    data['isHasResult'] = this.isHasResult;
    data['msg'] = this.msg;
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    data['state'] = this.state;
    return data;
  }
}

class HomePageSurroundResult {
  String hadRaisedMoneny;
  int id;
  int leftDay;
  int percent;
  String poster;
  int raiseModelStatus;
  String raiseTypeView;
  int supportNum;
  String title;

  HomePageSurroundResult(
      {this.hadRaisedMoneny,
        this.id,
        this.leftDay,
        this.percent,
        this.poster,
        this.raiseModelStatus,
        this.raiseTypeView,
        this.supportNum,
        this.title});

  HomePageSurroundResult.fromJson(Map<String, dynamic> json) {
    hadRaisedMoneny = json['hadRaisedMoneny'];
    id = json['id'];
    leftDay = json['leftDay'];
    percent = json['percent'];
    poster = json['poster'];
    raiseModelStatus = json['raiseModelStatus'];
    raiseTypeView = json['raiseTypeView'];
    supportNum = json['supportNum'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hadRaisedMoneny'] = this.hadRaisedMoneny;
    data['id'] = this.id;
    data['leftDay'] = this.leftDay;
    data['percent'] = this.percent;
    data['poster'] = this.poster;
    data['raiseModelStatus'] = this.raiseModelStatus;
    data['raiseTypeView'] = this.raiseTypeView;
    data['supportNum'] = this.supportNum;
    data['title'] = this.title;
    return data;
  }
}