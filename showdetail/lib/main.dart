import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  void _showDartLogoDetailDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Dart Logo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://img.stackshare.io/service/1646/Twitter-02.png',
                width: 120,
              ),
              SizedBox(height: 10),
              Text(
                'Giới thiệu ngôn ngữ lập trình Dart Dart là ngôn ngữ lập trình mới, được phát triển bởi Google, hiện đã được chấp thuận bởi tổ chức Ecma.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Đóng'),
            ),
          ],
        );
      },
    );
  }
  void _showFlutterLogoDetailDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Futter Logo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo-1024x683.png',
                width: 120,
              ),
              SizedBox(height: 10),
              Text(
                'Flutter được phát triển nhằm giải quyết bài toán thường gặp trong mobile là Fast Development và Native Performance. Nếu như React Native chỉ đảm bảo Fast Development và code native thuần chỉ đảm bảo Native Performance thì Flutter làm được cả 2 điều trên.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Đóng'),
            ),
          ],
        );
      },
    );
  }
  void _showAndroidLogoDetailDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Futter Logo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://img.freepik.com/free-icon/android_318-432122.jpg',
                width: 120,
              ),
              SizedBox(height: 10),
              Text(
                'Flutter được phát triển nhằm giải quyết bài toán thường gặp trong mobile là Fast Development và Native Performance. Nếu như React Native chỉ đảm bảo Fast Development và code native thuần chỉ đảm bảo Native Performance thì Flutter làm được cả 2 điều trên.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Đóng'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Test Home Page'),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: 390,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home Screen',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.green),
              ),
              Text(
                'Tên : Võ Trần Uy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              Text(
                'MSSV : 0850080053',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              buildRowLayout(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _showDartLogoDetailDialog(context);
                },
                child: Image.network(
                  'https://img.stackshare.io/service/1646/Twitter-02.png',
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showFlutterLogoDetailDialog(context);
                },
                child: Image.network(
                  'https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo-1024x683.png',
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showAndroidLogoDetailDialog(context);
                },
                child: Image.network(
                  'https://img.freepik.com/free-icon/android_318-432122.jpg',
                  width: 120,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildRowLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        Container(
          color: Colors.green,
          height: 100,
          width: 100,
        ),
        Container(
          color: Colors.orange,
          height: 100,
          width: 100,
        )
      ],
    );
  }
}

