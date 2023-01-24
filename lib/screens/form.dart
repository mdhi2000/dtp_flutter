import 'package:flutter/material.dart';
import 'package:dtp_flutter/model/model.dart';
import 'package:dtp_flutter/widgets/form.widgets.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key, required this.setPage});

  final void Function(int) setPage;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormResultAdd(Form_result(),setPage: widget.setPage),
    );
  }
}
