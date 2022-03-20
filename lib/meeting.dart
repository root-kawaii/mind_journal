import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  @override
  CalendarAppointment createState() => CalendarAppointment();
}

class CalendarAppointment extends State<Calendar> {
  late CalendarDataSource _dataSource;

  @override
  void initState() {
    _dataSource = _getDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SfCalendar(
            dataSource: _dataSource,
            onTap: calendarTapped,
            allowedViews: [
              CalendarView.day,
              CalendarView.week,
              CalendarView.month,
              //CalendarView.timelineDay,
              //CalendarView.timelineWeek,
              //CalendarView.timelineWorkWeek,
              CalendarView.timelineMonth,
              //CalendarView.schedule
            ],
            monthViewSettings: MonthViewSettings(showAgenda: true),
          ),
        ),
      ),
    );
  }

  void calendarTapped(CalendarTapDetails calendarTapDetails) {
    Appointment app = Appointment(
        startTime: calendarTapDetails.date!,
        endTime: calendarTapDetails.date!.add(Duration(hours: 1)),
        subject: 'Tapped appointment',
        color: Colors.greenAccent);
    _dataSource.appointments!.add(app);
    _dataSource
        .notifyListeners(CalendarDataSourceAction.add, <Appointment>[app]);
  }

  _DataSource _getDataSource() {
    List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(hours: 1)),
      subject: 'Meeting',
      color: Color.fromARGB(255, 46, 29, 199),
    ));
    return _DataSource(appointments);
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
