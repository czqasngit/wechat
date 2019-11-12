import 'package:flutter/material.dart';
import 'chats.dart';
import 'contacts.dart';
import 'discover.dart';
import 'me.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with TickerProviderStateMixin {

  int currentTabIndex = 0;

  void changeTabIndex(int index) {
    setState(() {
      this.currentTabIndex = index;
    });
  }
  Widget getContentWidget() {
    switch (this.currentTabIndex) {
      case 0: return Chats();
      case 1: return Contacts();
      case 2: return Discover();
      case 3: return Me();
      default: return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 235, 235, 235),
        ),
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          top: false,
          child: Scaffold(
              appBar: AppBar(
                title: Text('Wechat'),
                elevation: 0,
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(title: Text('Chats'), icon: Icon(Icons.chat), backgroundColor: Colors.orange),
                  BottomNavigationBarItem(title: Text('Contacts'), icon: Icon(Icons.contacts), backgroundColor: Colors.orange),
                  BottomNavigationBarItem(title: Text('Discover'), icon: Icon(Icons.power_settings_new), backgroundColor: Colors.orange),
                  BottomNavigationBarItem(title: Text('Me'), icon: Icon(Icons.access_alarms), backgroundColor: Colors.orange)
                ],
                currentIndex: this.currentTabIndex,
                onTap: (index) => this.changeTabIndex(index),
                showSelectedLabels: true,
                type: BottomNavigationBarType.fixed,
              ),
              body: Container(
                child: getContentWidget(),
              ),
        )

        )
    );
  }
}

