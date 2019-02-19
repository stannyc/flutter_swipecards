import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(),
    );
  }


  Widget _body(){
    return Container(
      child: Text("category"),
    );
  }


  Widget _appbar(){
    return new AppBar(
      title: Text("Category"),
    );
  }


}