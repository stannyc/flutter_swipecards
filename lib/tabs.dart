import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/cupertino.dart';

//SCREENS
import 'package:inbrief/screens/home.dart';


class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.indigo)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 1.0,
        automaticallyImplyLeading: false,
        leading: _appbarAvatar(context),
        elevation: 3.0,
        title: _titleText(),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(CupertinoIcons.gear),
          )
        ],
      ),
      drawer: _drawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.newspaper_o),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.list),
            title: Text('Topics'),
          ),
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.map_signs), title: Text('Area')),
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.heart_o), title: Text('Favorite'))
        ],
      ),
    );
  }

  Widget _appbarAvatar(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RawMaterialButton(
          onPressed: null,
          child: CircleAvatar(
            backgroundImage: AssetImage('graphics/avatar1.jpg'),
            backgroundColor: Colors.white,
          ),
          shape: CircleBorder(
            side: BorderSide(color: Colors.white70, width: 2.0)
          ),
        ),
      ],
    );
  }



  Widget _drawer() {
    return Drawer(
      elevation: 0,
      child: Container(),
    );
  }

  Widget _titleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'in',
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 22),
        ),
        Text(
          'Brief',
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
