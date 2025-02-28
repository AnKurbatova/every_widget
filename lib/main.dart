import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(MyApp());

  // Настроим окно
  doWhenWindowReady(() {
    final win = appWindow;
    win.minSize = Size(300, 150);
    win.size = Size(300, 150);
    win.alignment = Alignment.center;
    win.show();
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OverlayWidget(),
    );
  }
}

class OverlayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime minDate = DateTime.now().subtract(Duration(days: 18 * 365));
    String formattedDate = DateFormat('dd.MM.yyyy').format(minDate);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Минимальная дата покупки:', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              Text(
                formattedDate,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}