import 'package:fluttertd/api/page_request/home_raise_list_data.dart';
import 'package:fluttertd/home/home_page_model/home_raise_model.dart';

class HomeRaisePageList {
  static Future<HomePageRaiseModel> requestRaisePerformanceList(
      int start) async {

    final result = await TDRaiseAPIData.TDRaiseList;
    HomePageRaiseModel homePageRaiseModel = HomePageRaiseModel.fromJson(result);
    return homePageRaiseModel;
  }
}
