import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'button_clicks.dart';

void main() => runApp(MyApp());

var initialVal = '0';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CalcHome(),
    );
  }
}

class CalcHome extends StatefulWidget {
  @override
  _CalcHomeState createState() => _CalcHomeState();
}

class _CalcHomeState extends State<CalcHome> {
  String displayValue = '0';
  String number2 = '';
  String number1 = '';
  String operation = '';
  bool compCheck = false; //Checking if Operators Button is pressed
  bool calcIsCalled = false; //Checking if calculate is called

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      //DeviceOrientation.landscapeLeft,
    ]);
  }

  void onBtnPressed(var value) {
    switch (value) {
      case 'AC':
        {
          number1 = '';
          number2 = '';
          operation = '';
          compCheck = true;
          setState(() {
            displayValue = '0';
          });
        }
        break;
      case 'C':
        {
          if (displayValue.length == 1) {
            setState(() {
              displayValue = '0';
            });
          } else {
            if ((displayValue.contains('-')) && (displayValue.length == 2)) {
              setState(() {
                displayValue = '0';
              });
            } else {
              setState(() {
                displayValue =
                    displayValue.substring(0, displayValue.length - 1);
              });
            }
          }
        }
        break;
      case 'Dec':
        {
          if (compCheck) {
            setState(() {
              displayValue = '0.';
            });
          } else {
            if (displayValue == '0') {
              setState(() {
                displayValue = '0.';
              });
            } else {
              if ('.'.allMatches(displayValue).length == 0) {
                setState(() {
                  displayValue = displayValue + '.';
                });
              }
            }
          }
          compCheck = false;
        }
        break;
      case 'PM':
        {
          if (displayValue != '0') {
            if (displayValue.substring(0, 1) == '-') {
              setState(() {
                displayValue = displayValue.substring(1, displayValue.length);
              });
            } else {
              setState(() {
                displayValue = '-' + displayValue;
              });
            }
          }
        }
        break;
      case 'Div':
        {
          if (number1 == '') {
            number1 = displayValue;
            operation = '/';
          } else {
            if (operation != '') {
              if (number2 == '') {
                number2 = displayValue;
                calculate(number1, number2, operation);
              }
            }
          }
          operation = '/';
          compCheck = true;
          number1 = displayValue;
        }
        break;
      case 'X':
        {
          if (number1 == '') {
            number1 = displayValue;
            operation = 'X';
          } else {
            if (operation != '') {
              if (number2 == '') {
                number2 = displayValue;
                calculate(number1, number2, operation);
              }
            }
          }
          operation = 'X';
          compCheck = true;
          number1 = displayValue;
        }
        break;
      case 'Min':
        {
          if (number1 == '') {
            number1 = displayValue;
            operation = 'Min';
          } else {
            if (operation != '') {
              if (number2 == '') {
                number2 = displayValue;
                calculate(number1, number2, operation);
              }
            }
          }
          operation = 'Min';
          compCheck = true;
          number1 = displayValue;
        }
        break;
      case 'Add':
        {
          if (number1 == '') {
            number1 = displayValue;
            operation = 'Add';
          } else {
            if (operation != '') {
              if (number2 == '') {
                number2 = displayValue;
                calculate(number1, number2, operation);
              }
            }
          }
          operation = 'Add';
          compCheck = true;
          number1 = displayValue;
        }
        break;
      case 'EQ':
        {
          print('1st Number= $number1 second Number is $displayValue');
          calculate(number1, displayValue, operation);
        }
        break;
      default:
        if (compCheck) {
          compCheck = false;
          setState(() {
            displayValue = '$value';
          });
        } else {
          if (displayValue == '0') {
            setState(() {
              displayValue = '$value';
            });
          } else {
            setState(() {
              displayValue = displayValue + '$value';
            });
          }
        }
    }
  }

  void calculate(var num1, var num2, String _operation) {
    calcIsCalled = true;

    if (_operation == '/') {
      setState(() {
        displayValue = (double.parse(num1) / double.parse(num2)).toString();
      });
    } else if (_operation == 'X') {
      setState(() {
        displayValue = (double.parse(num1) * double.parse(num2)).toString();
      });
    } else if (_operation == 'Min') {
      setState(() {
        displayValue = (double.parse(num1) - double.parse(num2)).toString();
      });
    } else if (_operation == 'Add') {
      setState(() {
        displayValue = (double.parse(num1) + double.parse(num2)).toString();
      });
    }

    if (displayValue.contains('.')) {
      var _dec = displayValue.substring(displayValue.indexOf('.'));
      if (double.parse(_dec) == .0) {
        displayValue = displayValue.substring(0, displayValue.indexOf('.'));
      }
      print('$_dec');
    }
    operation = '';
    number1 = '';
    number2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            NumberDisplay(displayValue),
            ButtonsDisplay(onBtnPressed),
          ],
        ),
      ),
    );
  }
}

class NumberDisplay extends StatefulWidget {
  NumberDisplay(this.value);

  final String value;
  @override
  _NumberDisplayState createState() => _NumberDisplayState();
}

class _NumberDisplayState extends State<NumberDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: .3, color: Colors.grey),
          color: Colors.orange[50]),
      padding: EdgeInsets.only(
          top: (MediaQuery.of(context).size.height -
                  ((MediaQuery.of(context).size.width / 4) * 5)) /
              2),
      //height: MediaQuery.of(context).size.height /3,
      height: MediaQuery.of(context).size.height -
          ((MediaQuery.of(context).size.width / 4) * 5),
      width: MediaQuery.of(context).size.width,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerRight,
        child: Text(
//        initialVal.toString(),
          '${widget.value}',
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
