import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double result = 0.0;
  double? firstNum, secondNum;
  String? operation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result.toString(),
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildOperationButton('/'),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildOperationButton('*'),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildOperationButton('-'),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('.'),
              _buildButton('0'),
              _buildButton('00'),
              _buildOperationButton('+'),
            ],
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _reset();
              });
            },
            child: Text('Clear'),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String buttonText) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (operation == null) {
            if (firstNum == null) {
              firstNum = double.parse(buttonText);
            } else {
              firstNum = double.parse('$firstNum$buttonText');
            }
          } else {
            if (secondNum == null) {
              secondNum = double.parse(buttonText);
            } else {
              secondNum = double.parse('$secondNum$buttonText');
            }
          }
        });
      },
      child: Text(buttonText),
    );
  }

  Widget _buildOperationButton(String buttonText) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (firstNum != null && operation == null) {
            operation = buttonText;
          } else if (secondNum != null) {
            _performOperation();
            firstNum = result;
            secondNum = null;
            operation = buttonText;
          }
        });
      },
      child: Text(buttonText),
    );
  }

  void _performOperation() {
    switch (operation) {
      case '/':
        result = firstNum! / secondNum!;
        break;
      case '*':
        result = firstNum! * secondNum!;
        break;
      case '-':
        result = firstNum! - secondNum!;
        break;
      case '+':
        result = firstNum! + secondNum!;
        break;
    }
  }

  void _reset() {
    result = 0.0;
    firstNum = null;
    secondNum = null;
    operation = null;
  }
}
