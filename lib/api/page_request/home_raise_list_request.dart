import 'package:fluttertd/api/page_request/home_raise_list_data.dart';
import 'package:fluttertd/home/home_page_model/home_raise_model.dart';

class HomeRaisePageList {
  static HomePageRaiseModel requestRaisePerformanceList(){

    final result = TDRaiseAPIData.TDRaiseList;
    HomePageRaiseModel homePageRaiseModel = HomePageRaiseModel.fromJson(result);
    return homePageRaiseModel;
  }
}
