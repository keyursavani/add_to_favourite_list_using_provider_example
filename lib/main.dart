import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_example/Provider_http_request/third_example.dart';
import 'package:provider_state_management_example/first_Example/data_class.dart';
import 'package:provider_state_management_example/first_Example/first_example.dart';
import 'package:provider_state_management_example/item_list_example/item_list_page.dart';
import 'package:provider_state_management_example/provider_http_post_request/data_class.dart';
import 'package:provider_state_management_example/provider_http_post_request/signup_page.dart';
import 'package:provider_state_management_example/second_example/change_course.dart';
import 'package:provider_state_management_example/second_example/second_example.dart';

import 'Provider_http_request/data_class.dart';
import 'item_list_example/item_provider_page.dart';

 // foe example one , two  and three (provider http request)

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return
//       ChangeNotifierProvider(
//       create: (context) =>
//           DataClass(),
//           // ChangeCourse(),
//           //    DataClass2(),
//       child:
//       const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FirstExamplePage(),
//        ),
//      );
//   }
// }


// void main() {
//   runApp(MultiProvider(
//       providers: [
//       ChangeNotifierProvider(create: (_) => DataClass3()),
//     ],
//     child: const MyApp(),
//   ),
//   );
// }
//


// for provider http post request


// class MyApp extends StatelessWidget{
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return  MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primarySwatch: Colors.blueGrey
//           ),
//           home: const SignupPage(),
//       );
//   }
// }


// for item list example

void main() {
  runApp(
      MultiProvider(
          providers:[
            ChangeNotifierProvider(
                create: (_) =>   ItemProviderPage()),
          ],
        child: const MyApp(),
      ),
  );
}


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
          debugShowCheckedModeBanner: false,
          home: const ItemListPage(),
      );
  }
}