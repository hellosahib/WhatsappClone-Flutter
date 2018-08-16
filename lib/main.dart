import 'package:flutter/material.dart';
import 'message_send.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: new MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView>
    with SingleTickerProviderStateMixin {
  TabController menuController;

  //User Defined Functions

  void _searchCall() {
    debugPrint('Search Button');
  }

  void _menuCall() {
    debugPrint('Menu Button');
  }

  @override
  void initState() {
    menuController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabsName = new List();
    tabsName.add(Tab(icon: new Icon(Icons.camera_enhance)));
    tabsName.add(Tab(text: 'CHATS'));
    tabsName.add(Tab(text: 'STATUS'));
    tabsName.add(Tab(text: 'CALLS'));

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: tabsName,
          controller: menuController,
          indicatorColor: Colors.white,
          indicatorWeight: 4.0,
        ),
        centerTitle: false,
        primary: true,
        backgroundColor: Colors.green,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Whatsapp'),
        ),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.search), onPressed: _searchCall),
          IconButton(icon: new Icon(Icons.filter_list), onPressed: _menuCall),
        ],
      ),
      body: TabBarView(controller: menuController,children: [
        Center(child: Text('Camera Screen')),
        ListView.builder(itemCount: 10,itemBuilder: (context,index){
         return Column(
           children: <Widget>[
             ListTile(
               contentPadding: EdgeInsets.all(8.0),
               title: Text('Sender Name'),
               subtitle: Text('Sender Message'),
               leading: CircleAvatar(
                 backgroundImage: NetworkImage('https://highape.com/images/uploads/2017/04/Shirley-Setia-HD-Photos.jpg'),
                 radius: 40.0,
               ),
               trailing: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Text('Yesterday'),
                   Text('2:23 PM')
                 ],
               ),
             ),
             Divider(height: 8.0,color: Colors.grey)
           ],
         );
        }),
        Center(child: Text('Status Screen')),
        Center(child: Text('Calls Screen'))
      ]),
      floatingActionButton: FloatingActionButton(onPressed: (){
        runApp(new message());
      },child: Icon(Icons.launch),elevation: 16.0,backgroundColor: Colors.green,),

    );
  }
}
