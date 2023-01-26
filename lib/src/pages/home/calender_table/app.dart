import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  String selected = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeApp.white,
        foregroundColor: ThemeApp.dark,
        elevation: 0,
        title: const Center(
          child: Text(
            "Detail Pemesanan",
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ),
      ),
      body: Container(
        color: ThemeApp.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              calendarStyle: const CalendarStyle(
                rowDecoration: BoxDecoration(
                  color: ThemeApp.primary,
                ),
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  color: Colors.black,
                ),
                weekendStyle: TextStyle(
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      10,
                    ),
                  ),
                  color: ThemeApp.primary,
                ),
              ),
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonVisible: false,
              ),
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2001, 01, 01),
              lastDay: DateTime.utc(2030, 01, 03),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "Pilih Waktu",
              style: TextStyle(
                color: ThemeApp.dark,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxTime(
                      handleTap: () {
                        setState(() {
                          selected = "08:00";
                        });
                      },
                      time: "08:00",
                      status: "08:00" == selected,
                    ),
                    BoxTime(
                      handleTap: () {
                        setState(() {
                          selected = "09:00";
                        });
                      },
                      time: "09:00",
                      status: "09:00" == selected,
                    ),
                    BoxTime(
                      handleTap: () {
                        setState(() {
                          selected = "10:00";
                        });
                      },
                      time: "10:00",
                      status: "10:00" == selected,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxTime(
                      handleTap: () {
                        setState(() {
                          selected = "11:00";
                        });
                      },
                      time: "11:00",
                      status: "11:00" == selected,
                    ),
                    BoxTime(
                      handleTap: () {
                        setState(() {
                          selected = "12:00";
                        });
                      },
                      time: "12:00",
                      status: "12:00" == selected,
                    ),
                    BoxTime(
                      handleTap: () {
                        setState(() {
                          selected = "13:00";
                        });
                        debugPrint(selected);
                      },
                      time: "13:00",
                      status: "13:00" == selected,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(
                        context,
                        MyRoutes.detailPembayaran,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 15,
                        ),
                        decoration: const BoxDecoration(
                          color: ThemeApp.dark,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        child: const Text(
                          "Pesan",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BoxTime extends StatelessWidget {
  const BoxTime({
    Key? key,
    required this.time,
    this.status = false,
    required this.handleTap,
  }) : super(key: key);

  final String time;
  final bool status;
  final void Function() handleTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: status ? ThemeApp.dark : ThemeApp.primary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Text(
          time,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: status ? ThemeApp.white : ThemeApp.dark,
          ),
        ),
      ),
    );
  }
}
