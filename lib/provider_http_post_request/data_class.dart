import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider_state_management_example/provider_http_post_request/service_class2.dart';
import 'package:provider_state_management_example/provider_http_post_request/signup_model.dart';

class DataClass3 extends ChangeNotifier{
bool loading = false;
bool isBack = false;

Future<void> postData(SignUpBody body) async{
  loading = true;
  notifyListeners();
  http.Response response = (await register(body))!;
  print(response.statusCode);
  if(response.statusCode == 200){
    isBack = true;
  }
  else{
    print("Error");
    print(response.statusCode);
  }
  loading = true;
  notifyListeners();
 }
}