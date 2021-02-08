import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 150,
          color: Colors.blue.shade900,
        ),
        actions: [IconButton(icon: Icon(Icons.ios_share), onPressed: () {})],
      ),
      body: Container(
        margin:EdgeInsets.all(16),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Container(
                height: 10,
                width: 100,
                color: Colors.blue,
              ),
              subtitle: Container(
                height: 10,
                width: 150,
                color: Colors.blue,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.assistant_sharp),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 200,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width * 0.2,
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                ),

              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Container(
                  width: 150,
                  height: 10,
                  color: Colors.white,
                ),
                accountEmail: Container(
                  width: 150,
                  height: 10,
                  color: Colors.white,
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              color: Theme.of(context).primaryColor,
            ),
            Spacer(),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 200,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.rss_feed), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
