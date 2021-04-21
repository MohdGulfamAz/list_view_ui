import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyListView(),
  ));
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}
class _MyListViewState extends State<MyListView> {

  List<String> myList = ['It is item A','It is item B','It is item C','It is item D','It is item E','It is item F','It is item G','It is item H','It is item I','It is item J'];

  List<String> myImages= ['https://image.flaticon.com/icons/png/128/3665/3665892.png',
    'https://image.flaticon.com/icons/png/128/3096/3096985.png',
    'https://image.flaticon.com/icons/png/128/3096/3096988.png',
    'https://image.flaticon.com/icons/png/128/3096/3096997.png',
    'https://image.flaticon.com/icons/png/128/3097/3097003.png',
    'https://image.flaticon.com/icons/png/128/3097/3097011.png',
    'https://image.flaticon.com/icons/png/128/3097/3097018.png',
    'https://image.flaticon.com/icons/png/128/3097/3097026.png',
    'https://image.flaticon.com/icons/png/128/3097/3097031.png',
    'https://image.flaticon.com/icons/png/128/3097/3097037.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Sample'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: myList.length,
        itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal:6.0 ),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(myList[index]),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(myImages[index]),
                  ),
                ),
              ),
            );
        },
      ),
    );
  }
}


