import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_example/item_list_example/favourite_item_list_page.dart';
import 'package:provider_state_management_example/item_list_example/item_provider_page.dart';

class ItemListPage extends StatefulWidget{
  const ItemListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ItemListPageState();
  }
}
class ItemListPageState extends State<ItemListPage>{
  @override
  Widget build(BuildContext context) {
    var fav = context.watch<ItemProviderPage>().favList;
    print(fav);
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
      title: Text("Selected Item ${fav.length}"),
    ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 20,left: 15,right:15),
        child: ListView.builder(
          itemCount: 40,
            itemBuilder: (context , index) {
          return ListTile(
            title: Text("Item ${index}"),
            trailing: InkWell(
              onTap: (){
                if(!fav.contains(index)){
                  context.read<ItemProviderPage>().addToList(index);
                  print(fav);
                }
                else{
                  context.read<ItemProviderPage>().removeToList(index);
                  print(fav);
                }
              },
                child: Icon(Icons.favorite , color: fav.contains(index) ? Colors.red : Colors.blueGrey ,)),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context){
              return const FavouriteItemListPage();
            })
          );
        },
      ),
    );
  }
}