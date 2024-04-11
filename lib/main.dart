
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: SafeArea(child: Text("Flutter App")),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        /*  leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('clicked');
          },
        ),*/
        title: const Text(
          'AppBar Demo',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        /* actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {}),
        ],*/

        flexibleSpace: const SafeArea(
          child: Icon(
            Icons.camera,
            color: Colors.orange,
            size: 50.0,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(75.0),
          child: Container(
            color: Colors.green,
            height: 75.0,
            width: double.infinity,
            child: const Text(
              'Flutter',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Android Developer in Flutter',
          style: TextStyle(
              fontSize: 28.0,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.3,
              wordSpacing: 5.3,
              backgroundColor: Colors.white10,
              shadows: [
                BoxShadow(
                    color: Colors.green, offset: Offset(1, 4), blurRadius: 7),
              ],
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dashed),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked Floating');
        },
        elevation: 10.0,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: const Drawer(
        elevation: 16.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Flutter Application'),
              accountEmail: Text('vasanthamani2602@gmail.com'),
              arrowColor: Colors.green,
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'RVM',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'RVM',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('All Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Soical'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        fixedColor: Colors.green,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Add', icon: Icon(Icons.add)),
        ],
        onTap: (int index) {
          print(index.toString());
        },
      ),
      endDrawer: const Drawer(
        elevation: 16.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Flutter Application'),
              accountEmail: Text('vasanthamani2602@gmail.com'),
              arrowColor: Colors.green,
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'RVM',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'RVM',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('All Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Soical'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            )
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
