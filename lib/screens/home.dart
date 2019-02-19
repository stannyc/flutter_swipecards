import 'package:flutter/material.dart';
import 'package:inbrief/components/brief_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    /*   appBar: _appbar(), */
      body: _body(),
    );
  }


  Widget _body(){
    return Container(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index){
          return BriefCard();
        },
      ),
    );
  }


  Widget _appbar(){
    return new AppBar(
      title: Text("Home"),
    );
  }


}