import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Widget - 21MCA2473 - 🅟🅑🅙'),
        backgroundColor: Color(0xff6110af),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/home.png'),
          Image.asset('assets/images/home1.png'),
          Text('\nhttps://purnendu-pbj.in/\n\nDo You 👍🏽 My Portfolio ??\nPress + button\notherwise\nPress - button below !!\n\nYou have liked my Portfolio $_count times.', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 15.0,
          color: Color(0xFF03576e),
        ),
      ),

      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () => setState(() {
              _count--;
              }),
              tooltip: 'Decrement Counter',
              child: const Icon(Icons.delete),
              backgroundColor: Colors.black,
            ),

            FloatingActionButton(
              onPressed: () => setState(() {
                _count++;
              }),
              tooltip: 'Increment Counter',
              child: const Icon(Icons.add),
              backgroundColor: Colors.black,

            ),
          ]
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Color(0xFF03576e),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xff00897b),
        //other styles
        ),


        child: Drawer(
          elevation: 20.0,
          // backgroundColor: Color(0xFF032730),
          child: Column(

            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("21MCA2473"),
                accountEmail: Text("PURNENDU BIKASH JANA"),
                decoration: BoxDecoration(
                  color: const Color(0xFF6110af),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/images/me.png'),

                ),
              ),
              ListTile(
                title: new Text("Send Email", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: new Icon(Icons.mail,color: Colors.white,),
              ),
              Divider( height: 0.1,),
              ListTile(
                title: new Text("My Portfolio", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: new Icon(Icons.inbox,color: Colors.white,),
              ),
              ListTile(
                title: new Text("Connect Me", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: new Icon(Icons.people, color: Colors.white,),
              ),
              ListTile(
                title: new Text("Join with Offer", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: new Icon(Icons.local_offer,color: Colors.white,),
              )
            ],
          ),
        ),
      ),
    );
  }
}