class HomePageRaiseModel {
  Null invalidParams;
  String isHasResult;
  String msg;
  HomePageRaiseResult result;
  String state;

  HomePageRaiseModel(
      {this.invalidParams,
        this.isHasResult,
        this.msg,
        this.result,
        this.state});

  HomePageRaiseModel.fromJson(Map<String, dynamic> json) {
    invalidParams = json['invalidParams'];
    isHasResult = json['isHasResult'];
    msg = json['msg'];
    result =
    json['result'] != null ? new HomePageRaiseResult.fromJson(json['result']) : null;
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

class HomePageRaiseResult {
  List<HomePageRaiseThemes> themes;
  List<HomePageRaiseHotGoods> hotGoods;

  HomePageRaiseResult({this.themes, this.hotGoods});

  HomePageRaiseResult.fromJson(Map<String, dynamic> json) {
    if (json['themes'] != null) {
      themes = new List<HomePageRaiseThemes>();
      json['themes'].forEach((v) {
        themes.add(new HomePageRaiseThemes.fromJson(v));
      });
    }
    if (json['hotGoods'] != null) {
      hotGoods = new List<HomePageRaiseHotGoods>();
      json['hotGoods'].forEach((v) {
        hotGoods.add(new HomePageRaiseHotGoods.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.themes != null) {
      data['themes'] = this.themes.map((v) => v.toJson()).toList();
    }
    if (this.hotGoods != null) {
      data['hotGoods'] = this.hotGoods.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomePageRaiseThemes {
  String detailPath;
  String dominantTone;
  List<HomePageRaiseGoodsList> goodsList;
  int id;
  String poster;
  String subTitle;
  String title;

  HomePageRaiseThemes(
      {this.detailPath,
        this.dominantTone,
        this.goodsList,
        this.id,
        this.poster,
        this.subTitle,
        this.title});

  HomePageRaiseThemes.fromJson(Map<String, dynamic> json) {
    detailPath = json['detailPath'];
    dominantTone = json['dominantTone'];
    if (json['goodsList'] != null) {
      goodsList = new List<HomePageRaiseGoodsList>();
      json['goodsList'].forEach((v) {
        goodsList.add(new HomePageRaiseGoodsList.fromJson(v));
      });
    }
    id = json['id'];
    poster = json['poster'];
    subTitle = json['subTitle'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['detailPath'] = this.detailPath;
    data['dominantTone'] = this.dominantTone;
    if (this.goodsList != null) {
      data['goodsList'] = this.goodsList.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['poster'] = this.poster;
    data['subTitle'] = this.subTitle;
    data['title'] = this.title;
    return data;
  }
}

class HomePageRaiseGoodsList {
  int goodsId;
  String name;
  String poster;
  String price;

  HomePageRaiseGoodsList({this.goodsId, this.name, this.poster, this.price});

  HomePageRaiseGoodsList.fromJson(Map<String, dynamic> json) {
    goodsId = json['goodsId'];
    name = json['name'];
    poster = json['poster'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['goodsId'] = this.goodsId;
    data['name'] = this.name;
    data['poster'] = this.poster;
    data['price'] = this.price;
    return data;
  }
}

class HomePageRaiseHotGoods {
  String bindName;
  int buyGroupType;
  int goodsId;
  String goodsName;
  String goodsPoster;
  String price;
  int status;

  HomePageRaiseHotGoods(
      {this.bindName,
        this.buyGroupType,
        this.goodsId,
        this.goodsName,
        this.goodsPoster,
        this.price,
        this.status});

  HomePageRaiseHotGoods.fromJson(Map<String, dynamic> json) {
    bindName = json['bindName'];
    buyGroupType = json['buyGroupType'];
    goodsId = json['goodsId'];
    goodsName = json['goodsName'];
    goodsPoster = json['goodsPoster'];
    price = json['price'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bindName'] = this.bindName;
    data['buyGroupType'] = this.buyGroupType;
    data['goodsId'] = this.goodsId;
    data['goodsName'] = this.goodsName;
    data['goodsPoster'] = this.goodsPoster;
    data['price'] = this.price;
    data['status'] = this.status;
    return data;
  }
}