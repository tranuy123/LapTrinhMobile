import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Kiểm tra số nguyên tố'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _aController;
  String _result = '';

  @override
  void initState() {
    super.initState();
    _aController = TextEditingController();
  }

  @override
  void dispose() {
    _aController.dispose();
    super.dispose();
  }

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }

    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }

  void _kiemtrasonguyento() {
    int numberToCheck = int.tryParse(_aController.text) ?? 0;
    if (isPrime(numberToCheck)) {
      setState(() {
        _result = '$numberToCheck là số nguyên tố.';
      });
    } else {
      setState(() {
        _result = '$numberToCheck không phải là số nguyên tố.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: SizedBox(),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5, // Chiều rộng của TextField bằng 1/2 màn hình
              child: TextFormField(
                controller: _aController,
                decoration: InputDecoration(
                  labelText: 'Nhập số a',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _kiemtrasonguyento,
              child: Text('Thực hiện'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Text(
              _result,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
