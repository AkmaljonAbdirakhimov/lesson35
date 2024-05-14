import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("35-Dars"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2025),
                );

                print(date);
              },
              child: const Text("Show Date Picker"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () async {
                TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                print(time);
              },
              child: const Text("Show Time Picker"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () async {
                DateTimeRange? dateTimeRange = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000));

                print(dateTimeRange!.duration.inDays);
              },
              child: const Text("Show Date Range Picker"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () async {
                IconData? icon = await showIconPicker(context);
              },
              child: const Text("Show Icon Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
