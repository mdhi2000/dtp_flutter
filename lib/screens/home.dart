import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dtp_flutter/model/model.dart';
import 'package:dtp_flutter/tools/helper.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class FormsList extends StatefulWidget {
  const FormsList({super.key, required this.setPage});

  final void Function(int) setPage;

  @override
  State<FormsList> createState() => _FormsListState();
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localJsonFile async {
  final path = await _localPath;
  return File("$path/output${DateTime.now().toString()}.json");
}

Future<File> get _localCsvFile async {
  final path = await _localPath;
  return File("$path/output${DateTime.now().toString()}.csv");
}

class _FormsListState extends State<FormsList> {
  List<Form_result> forms = [];
  @override
  void initState() {
    super.initState();
    Form_result().select().toList().then((value) {
      setState(() {
        forms = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: forms.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: Wrap(direction: Axis.vertical, children: [
                Text("${forms[index].id}. Name: ${forms[index].name ?? ""}"),
                Text(
                    "ID: ${forms[index].external_id} | Date: ${Jalali.fromDateTime(forms[index].date ?? DateTime.now()).formatCompactDate()} | Operator Physician: ${forms[index].operator_physician}",
                    style: const TextStyle(color: Colors.black54)),
              ]));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          indent: 20,
          endIndent: 20,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "New",
          onPressed: () => widget.setPage(1),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.grey,
          notchMargin: 5,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.all(20),
                  child: const Text("Export:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                IconButton(
                  iconSize: 30,
                  tooltip: "CSV",
                  onPressed: () {},
                  icon: const Icon(Icons.file_copy_rounded),
                  color: Colors.white,
                ),
                IconButton(
                  iconSize: 30,
                  tooltip: "Json",
                  onPressed: () async {
                    var json =
                        forms.map((form) => form.toJson()).toList().toString();
                    final file = await _localJsonFile;

                    // Write the file
                    file.writeAsString(json);
                    // String? outputFile = await FilePicker.platform.saveFile(
                    //   dialogTitle: 'Please select an output file:',
                    //   fileName: 'output-file.pdf',
                    // );
                  },
                  icon: const Icon(Icons.data_object_rounded),
                  color: Colors.white,
                ),
              ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}
