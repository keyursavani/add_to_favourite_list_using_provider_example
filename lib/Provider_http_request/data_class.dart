import 'package:flutter/material.dart';
import 'package:provider_state_management_example/Provider_http_request/data_model.dart';
import 'package:provider_state_management_example/Provider_http_request/service_class.dart';

class DataClass2 extends ChangeNotifier{
    DataModel? post;
    bool loading = false;

    getPostData() async{
      loading = true;
      post = (await getSinglePostData());
      loading = false;

      notifyListeners();
    }
}