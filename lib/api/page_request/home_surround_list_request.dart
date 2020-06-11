

import 'package:fluttertd/api/http_request.dart';
import 'package:fluttertd/home/home_page_model/home_surround_model.dart';

class HomeSurroundRequset{
  static Future<HomePageSurroundModel> surroundPerformanceList(int start) async{
    final String surroundListURL =
    "/raise/list.json?appVersion=4.6.1&pageIndex=1&pageNo=1&pageSize=10&sysVersion=12.4.6&terminal=ios&uuid=E98C737EC28242F8825CF74213C5A98D1584152448";
    final result = await HttpRequest.getRequest(surroundListURL);
    HomePageSurroundModel homePageSurroundModel = HomePageSurroundModel.fromJson(result);
    return homePageSurroundModel;

  }

}