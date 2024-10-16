import 'package:flutter/material.dart';
import 'package:flutter_application_4/student.dart';

class StudentInfo extends StatelessWidget {
  Student std;
  StudentInfo({
    required this.std,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('you tapped ${std.name}');
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Student Info'),
            content: Text(std.toString()),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('ok')),
            ],
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Name: ',
                        style: TextStyle(color: Colors.blue, fontSize: 22),
                      ),
                      Text(
                        std.name,
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'ID: ',
                        style: TextStyle(color: Colors.blue, fontSize: 22),
                      ),
                      Text(
                        std.id,
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                'assets/images/person.jpg',
                width: 80,
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
