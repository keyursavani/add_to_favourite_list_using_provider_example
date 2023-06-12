import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_example/item_list_example/item_provider_page.dart';

class FavouriteItemListPage extends StatefulWidget{
  const FavouriteItemListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FavouriteItemListPageState();
  }
}

class FavouriteItemListPageState extends State<FavouriteItemListPage>{
  @override
  Widget build(BuildContext context) {
    var fav = context.watch<ItemProviderPage>().favList;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Item"),
      ),
      body: ListView.builder(
        itemCount: fav.length,
          itemBuilder: (context , index){
          return ListTile(
            title: Text("Item ${fav[index]}"),
            trailing: TextButton(
              onPressed: (){
              context.read<ItemProviderPage>().removeToList(fav[index]);
            },
              child: const Text("Remove" ,style: TextStyle(color: Colors.red),),),
          );
      }),
    );
  }
}