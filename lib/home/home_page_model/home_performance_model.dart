class HomePagePerformanceModel {
  Null invalidParams;
  String isHasResult;
  String msg;
  HomePagePerformanceResult result;
  String state;

  HomePagePerformanceModel(
      {this.invalidParams,
        this.isHasResult,
        this.msg,
        this.result,
        this.state});

  HomePagePerformanceModel.fromJson(Map<String, dynamic> json) {
    invalidParams = json['invalidParams'];
    isHasResult = json['isHasResult'];
    msg = json['msg'];
    result =
    json['result'] != null ? new HomePagePerformanceResult.fromJson(json['result']) : null;
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['invalidParams'] = this.invalidParams;
    data['isHasResult'] = this.isHasResult;
    data['msg'] = this.msg;
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    data['state'] = this.state;
    return data;
  }
}

class HomePagePerformanceResult {
  String title;
  List<HomePagePerformanceDataList> dataList;

  HomePagePerformanceResult({this.title, this.dataList});

  HomePagePerformanceResult.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['dataList'] != null) {
      dataList = new List<HomePagePerformanceDataList>();
      json['dataList'].forEach((v) {
        dataList.add(new HomePagePerformanceDataList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.dataList != null) {
      data['dataList'] = this.dataList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomePagePerformanceDataList {
  String activityId;
  String activityPrice;
  int activityType;
  String activityTypeName;
  String address;
  String avatar;
  int beginTimeConfirmed;
  int canBringFriend;
  String city;
  String friendRuleUrl;
  int groupId;
  int isEnd;
  int isShowCollection;
  int isTour;
  int leftDay;
  List<String> performerList;
  String performerName;
  int price;
  int sellIdentity;
  int sequence;
  int showStartTime;
  String showTime;
  String siteName;
  List<int> styleIds;
  List<String> styles;
  String title;
  String week;
  int wishCount;

  HomePagePerformanceDataList(
      {this.activityId,
        this.activityPrice,
        this.activityType,
        this.activityTypeName,
        this.address,
        this.avatar,
        this.beginTimeConfirmed,
        this.canBringFriend,
        this.city,
        this.friendRuleUrl,
        this.groupId,
        this.isEnd,
        this.isShowCollection,
        this.isTour,
        this.leftDay,
        this.performerList,
        this.performerName,
        this.price,
        this.sellIdentity,
        this.sequence,
        this.showStartTime,
        this.showTime,
        this.siteName,
        this.styleIds,
        this.styles,
        this.title,
        this.week,
        this.wishCount});

  HomePagePerformanceDataList.fromJson(Map<String, dynamic> json) {
    activityId = json['activityId'];
    activityPrice = json['activityPrice'];
    activityType = json['activityType'];
    activityTypeName = json['activityTypeName'];
    address = json['address'];
    avatar = json['avatar'];
    beginTimeConfirmed = json['beginTimeConfirmed'];
    canBringFriend = json['canBringFriend'];
    city = json['city'];
    friendRuleUrl = json['friendRuleUrl'];
    groupId = json['groupId'];
    isEnd = json['isEnd'];
    isShowCollection = json['isShowCollection'];
    isTour = json['isTour'];
    leftDay = json['leftDay'];
    performerList = json['performerList'].cast<String>();
    performerName = json['performerName'];
    price = json['price'];
    sellIdentity = json['sellIdentity'];
    sequence = json['sequence'];
    showStartTime = json['showStartTime'];
    showTime = json['showTime'];
    siteName = json['siteName'];
    styleIds = json['styleIds'].cast<int>();
    styles = json['styles'].cast<String>();
    title = json['title'];
    week = json['week'];
    wishCount = json['wishCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activityId'] = this.activityId;
    data['activityPrice'] = this.activityPrice;
    data['activityType'] = this.activityType;
    data['activityTypeName'] = this.activityTypeName;
    data['address'] = this.address;
    data['avatar'] = this.avatar;
    data['beginTimeConfirmed'] = this.beginTimeConfirmed;
    data['canBringFriend'] = this.canBringFriend;
    data['city'] = this.city;
    data['friendRuleUrl'] = this.friendRuleUrl;
    data['groupId'] = this.groupId;
    data['isEnd'] = this.isEnd;
    data['isShowCollection'] = this.isShowCollection;
    data['isTour'] = this.isTour;
    data['leftDay'] = this.leftDay;
    data['performerList'] = this.performerList;
    data['performerName'] = this.performerName;
    data['price'] = this.price;
    data['sellIdentity'] = this.sellIdentity;
    data['sequence'] = this.sequence;
    data['showStartTime'] = this.showStartTime;
    data['showTime'] = this.showTime;
    data['siteName'] = this.siteName;
    data['styleIds'] = this.styleIds;
    data['styles'] = this.styles;
    data['title'] = this.title;
    data['week'] = this.week;
    data['wishCount'] = this.wishCount;
    return data;
  }

}