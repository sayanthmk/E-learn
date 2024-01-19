import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/client/pages/mainpage/main_page.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime today = DateTime.now();
  void _OnDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => const MainHome(),
                ),
              );
            },
            child: const Icon(FontAwesomeIcons.arrowLeft)),
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'CALENDER',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Container(
            width: 180,
            height: 20,
            color: const Color.fromARGB(255, 215, 215, 209),
            child: Text("Selected day = ${today.toString().split(" ")[0]}")),
        TableCalendar(
          headerStyle: const HeaderStyle(
              titleCentered: true, formatButtonVisible: false),
          selectedDayPredicate: (day) => isSameDay(day, today),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: today,
          onDaySelected: _OnDaySelected,
        ),
      ]),
    );
  }
}
