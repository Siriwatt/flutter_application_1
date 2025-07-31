import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'My Awesome App',
      debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(), // วิดเจ็ตหน้าจอหลักของคุณ
    ); // สร้าง MaterialApp ซึ่งเป็นวิดเจ็ตหลักของแอปพลิเคชัน
  }

  // สร้าง MaterialApp ซึ่งเป็นวิดเจ็ตหลักของแอปพลิเคชัน
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue, // ปรับแต่งสี AppBar
      ),
      body: Center(
        // พื้นที่เนื้อหาหลัก
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: 300.0,
          height: 150.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20.0), // มุมโค้งด้านซ้าย
              right: Radius.elliptical(50.0,20), // มุมโค้งด้านขวา
            ),
          ),
          child: Center(
            child: Image.asset('assets/images/dog.jpg', // ใช้ Image.asset เพื่อโหลดรูปภาพจาก assets
            width: 100,
            height: 50,
            fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // การกระทำที่จะทำเมื่อกดปุ่ม
          // ignore: avoid_print
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add), // ไอคอนสำหรับปุ่ม
      ),
    );
  }
}
 