import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'data_model.dart';

Future<DataModel?> getSinglePostData() async {
 DataModel? result;
 try{
   final response = await http.get(
     Uri.parse("https://jsonplaceholder.typicode.com/posts/2"),
     headers: {
        HttpHeaders.contentTypeHeader: "application/json",
     },);
   print(response.statusCode);
   if(response.statusCode == 200){
     print(response.statusCode);
     final item = json.decode(response.body);
     result = DataModel.fromJson(item);
   }
   else{
     print("Error");
     print(response.statusCode);
     }
   }
 catch (e) {
   log("Error in get data" + e.toString());
   print(e.toString());
 }
 return result;
}