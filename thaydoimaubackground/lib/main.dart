import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _backgroundColor = Colors.white; // Màu nền mặc định

  void _changeBackgroundColor() {
    setState(() {
      // Hàm này thay đổi màu nền khi được gọi
      // Ở đây, tôi đang sử dụng một số màu sẵn có, nhưng bạn có thể sử dụng bất kỳ màu nào bạn muốn.
      _backgroundColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Background Color'),
        ),
        body: Container(
          color: _backgroundColor, // Sử dụng màu nền hiện tại
          child: Center(
            child: ElevatedButton(
              onPressed: _changeBackgroundColor,
              child: Text('Thay đổi màu nền'),
            ),
          ),
        ),
      ),
    );
  }
}
