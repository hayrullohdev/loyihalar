import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    initializeDateFormatting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var formattedate = DateFormat(
      'EEEE dd.MM.yyyy HH:mm',
      'uz',
    ).format(dateTime);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Title"),
      ),
      body: Center(
        child: Text(formattedate),
      ),
    );
  }
}
