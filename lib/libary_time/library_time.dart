import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class LibraryTime extends StatefulWidget {
  const LibraryTime({super.key});

  @override
  State<LibraryTime> createState() => _LibraryTimeState();
}

class _LibraryTimeState extends State<LibraryTime> {
  DateTime? time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(time.toString()),
            TextButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2018, 3, 5),
                    maxTime: DateTime(2019, 6, 7),
                    onChanged: (date) {}, onConfirm: (date) {
                  setState(() {
                    time = date;
                  });
                }, currentTime: DateTime.now(), locale: LocaleType.id);
              },
              child: const Text(
                'show date time picker (Chinese)',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
