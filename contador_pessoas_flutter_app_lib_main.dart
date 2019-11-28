import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "contador de Pessoas",
      home: Home()

      ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _ifoText = "pode entrar";
  void changePeople(int delta){
    setState(() {
      this._people+=delta;
      if(_people<0){
        _ifoText="mundo invertido";

      }else if(_people<=10){
        _ifoText="pode entrar";
      }else{
        _ifoText="lotado";
      }
    });


  }
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: <Widget>[
          Image.asset("images/table-in-vintage-restaurant-6267.jpg",
            fit: BoxFit.cover, height: 1000.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoas: $_people",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1",
                        style: TextStyle(
                            fontSize: 40.0, color: Colors.white),
                      ),
                      onPressed: () {changePeople(1);},),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(
                            fontSize: 40.0, color: Colors.white),
                      ),
                      onPressed: () {changePeople(-1);},),
                  ),
                ],
              ),
              Center(
                child: Text(
                  _ifoText,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0),
                ),
              )
            ],
          )
        ]
    );
  }
}
