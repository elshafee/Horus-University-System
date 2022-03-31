import 'package:flutter/material.dart';
import 'package:horus_university/utilities/drawer_files.dart';

class Timetable extends StatefulWidget {
  const Timetable({Key? key}) : super(key: key);

  @override
  _TimetableState createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
  @override
  Widget build(BuildContext context) {
    final europeanCountries = [
      'Microprocessor',
      'Elshafee',
      'Mechanics',
      'Material',
      'Robotics',
      'dynamic',
    ];

    const Map mymap = {
      'Saturday': {
        'Lecture Principles of Negotiation': {
          'Staff': ['Dr Ahmad Elsayed', 'Eng Abdulrahman Elgoher'],
          'Location': ['E326'],
          'Time': ['9:30 => 10:30']
        },
        'Lecture Automatic Control': {
          'Staff': [
            'Dr Maher Rashad, Dr Ibrahim Eldeep',
            'Eng Abdulrahman Elgoher'
          ],
          'Location': ['E412'],
          'Time': ['11:45 => 13:45']
        },
        'Lecture Environmental impact': {
          'Staff': ['Dr Maher Rashad, Dr Ibrahim Eldeep', 'Eng Eman Mostafa'],
          'Location': ['E412'],
          'Time': ['15:00 => 16:00']
        },
      },
      'Sunday': [
        {
          'name': 'Lecture Power Electronics',
          'Staff': [
            'Dr mohamed Saeed',
            'Dr Husam Kasem',
            'Dr Walaa Omar ,Eng Ahmad Elsayed '
          ],
          'Location': ['E412'],
          'Time': ['15:00 => 16:00']
        },
        {
          'name': 'Lecture Software Engineering',
          'Staff': ['Dr Hatem Khater', 'Dr Mohamed Kamal', 'Eng Ahmad Elsayed'],
          'Location': ['E412'],
          'Time': ['15:00 => 16:00']
        },
      ],
      'Monday': {
        'start': ['Start', 'ok', 'go'],
      },
      'Tuesday': {
        'start': ['Start', 'ok', 'go'],
      },
      'Wednesday': {
        'start': ['Start', 'ok', 'go'],
      },
      'Thursday': {
        'start': ['Start', 'ok', 'go'],
      },
      'Friday': {
        'start': ['Start', 'ok', 'go'],
      },
      'update': {
        'now': ['Start', 'ok', 'go'],
      },
      'time': [
        ['20', '10s', '5s'],
        ['45', '30s', '15s']
      ]
    };
    int last = europeanCountries.length.toInt() - 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Table"),
      ),
      drawer: const Drawe(),
      body: ListView.builder(
          itemCount: europeanCountries.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Container(
                  height: 90,
                  width: 450,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                    color: Color.fromRGBO(200, 150, 26, 1),
                  ),
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(europeanCountries[index]),
                        trailing: Text(mymap['Saturday']
                                ['Lecture Automatic Control']['Time'][0]
                            .toString()),
                        subtitle: Text(""),
                      ),
                    ],
                  ),
                ),
              );
            } else if (last - index == 0) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Container(
                  height: 90,
                  width: 450,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                    color: Color.fromRGBO(200, 150, 26, 1),
                  ),
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(europeanCountries[index]),
                        trailing: const Text("9:30"),
                        subtitle: const Text("Dr Mohamed El Eraky\nDr Eiid"),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Container(
                  height: 90,
                  width: 450,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(200, 150, 26, 1),
                  ),
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(europeanCountries[index]),
                        trailing: const Text("2:00"),
                        subtitle: const Text("Dr Mohamed Kamal\nDr Omar"),
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
