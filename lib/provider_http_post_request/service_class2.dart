import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:provider_state_management_example/provider_http_post_request/signup_model.dart';

Future<http.Response?> register(SignUpBody data) async{
  http.Response? response;
  try{
    response = await http.post(
      Uri.parse("https://api.nstack.in/v1/todos"),
      headers:{
        HttpHeaders.contentTypeHeader: "application/json",
      },
      body: jsonEncode(data.toJson()),
    );
    print(response.statusCode);
  }
  catch (e){
    log("Log print"+e.toString());
  }
  return response;
}