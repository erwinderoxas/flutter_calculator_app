import 'main.dart';
import 'package:flutter/material.dart';

class ButtonsDisplay extends StatefulWidget {
  ButtonsDisplay(this.onButtonPressed);

  final Function onButtonPressed;
  @override
  _ButtonsDisplayState createState() => _ButtonsDisplayState();
}

class _ButtonsDisplayState extends State<ButtonsDisplay> {
  //var initialValue = 0;

  void _onPressed([var value]) {
    widget.onButtonPressed(value);

    print('$value is Pressed');
    print('Initial Value ' + initialVal);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
//                    padding: EdgeInsets.symmetric(
//                      vertical: 30,
//                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.redAccent,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('AC');
                      },
                      child: Text(
                        'AC',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('C');
                      },
                      child: Text(
                        '←',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('PM');
                      },
                      child: Text(
                        '+/-',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.orangeAccent,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('Div');
                      },
                      child: Text(
                        '/',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('7');
                      },
                      child: Text(
                        '7',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('8');
                      },
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('9');
                      },
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.orangeAccent,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('X');
                      },
                      child: Text(
                        'X',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('4');
                      },
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('5');
                      },
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('6');
                      },
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.orangeAccent,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('Min');
                      },
                      child: Text(
                        '-',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('1');
                      },
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('2');
                      },
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('3');
                      },
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.orangeAccent,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('Add');
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4 * 2,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('0');
                      },
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.white70,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('Dec');
                      },
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .3, color: Colors.grey),
                      color: Colors.orangeAccent,
                    ),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: FlatButton(
                      onPressed: () {
                        _onPressed('EQ');
                      },
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
