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
      theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
    useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
        title: 'Flutter Demo',
        home: const MyHomePage()
    );
  }
}
 
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold( // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Chapter 3 Lab'),
        backgroundColor: Colors.teal, // ปรับแต่งสี AppBar
      ),
      body: Center(
        child: Container( // กล่อง
        padding: const EdgeInsets.all(50.0),
          width: 300.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: const Text('Inside container',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            )
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // การกระทำที่จะทำเมื่อกดปุ่ม
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add), // ไอคอนสำหรับปุ่ม
      ),
    );
  }
}
 