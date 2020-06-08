import 'package:fluttertd/api/http_request.dart';
import 'package:fluttertd/home/home_page_model/home_performance_model.dart';

class HomePerformancePageList {
  static Future<HomePagePerformanceModel> requestHomePagePerformanceList(
      int start) async {
    final String PerformanceListURL =
        "/activity/list.json?appVersion=4.6.1&cityId=28&isHome=1&pageIndex=1&pageNo=1&pageSize=10&showTime=7&sortType=1&sysVersion=12.4.6&terminal=ios&uuid=E98C737EC28242F8825CF74213C5A98D1584152448";

    final result = await HttpRequest.getRequest(PerformanceListURL);
    HomePagePerformanceModel homePagePerformanceModel = HomePagePerformanceModel.fromJson(result);
    return homePagePerformanceModel;
  }
}
