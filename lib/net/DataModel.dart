import 'dart:async';

import 'package:dio/dio.dart';
import 'package:first_flutter_app/model/TopicBean.dart';

class DataModel {

  Future<TopicBean> getData() async {
    Dio dio = new Dio();
    Response response = await dio.get("https://cnodejs.org/api/v1/topics",
        data: {"page": 1, "limit": 5, "mdrender": true});
    return new TopicBean(response.data);
  }

}