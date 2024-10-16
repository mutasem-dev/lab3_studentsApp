import 'package:flutter/material.dart';
import 'package:flutter_application_4/StudentInfo.dart';
import 'package:flutter_application_4/student.dart';

void main() {
  runApp(const MyApp());
}

List<Student> students = [
  Student(name: 'Mutasem', id: '03/0177', phone: '21544', address: 'hebron'),
  Student(name: 'Ahmad', id: '12/4545', phone: '245345', address: 'nablus'),
  Student(name: 'Ali', id: '13/1234', phone: '2434', address: 'hebron'),
  Student(name: 'Mariam', id: '14/3543', phone: '23424', address: 'ramallah'),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StudentCard(),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('My info'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) => StudentInfo(std: students[index]),
      ),
    );
  }
}
