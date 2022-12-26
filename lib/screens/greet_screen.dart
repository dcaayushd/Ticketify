import 'package:ticketify/utils/app_styles.dart';
import 'package:flutter/material.dart';

class GreetScreen extends StatefulWidget {
  const GreetScreen({super.key});

  @override
  State<GreetScreen> createState() => _GreetScreenState();
}

class _GreetScreenState extends State<GreetScreen> {
  var _greeting = "";

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  void _updateGreeting() {
    var currentHour = DateTime.now().hour;

    if (currentHour >= 6 && currentHour < 12) {
      _greeting = "Good Morning!";
    } else if (currentHour >= 12 && currentHour < 17) {
      _greeting = "Good Afternoon!";
    } else if (currentHour >= 17 && currentHour < 21) {
      _greeting = "Good Evening!";
    } else {
      _greeting = "Good Night!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(_greeting, style: Styles.headlineStyle3);
  }
}
