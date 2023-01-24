import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dtp_flutter/model/model.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:sqflite/sqflite.dart';

import '../tools/helper.dart';

class FormResultAdd extends StatefulWidget {
  FormResultAdd(this._form_result, {required this.setPage});

  final dynamic _form_result;
  final void Function(int) setPage;

  @override
  State<FormResultAdd> createState() =>
      FormResultAddState(_form_result as Form_result);
}

class FormResultAddState extends State<FormResultAdd> {
  FormResultAddState(this.form_result);
  Form_result form_result;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtGender = TextEditingController();
  final TextEditingController txtExternal_id = TextEditingController();
  final TextEditingController txtOperator_physician = TextEditingController();
  final TextEditingController txtClinical_diagnosis = TextEditingController();
  final TextEditingController txtBirth_year = TextEditingController();
  final TextEditingController txtReferring_physician = TextEditingController();
  final TextEditingController txtDate = TextEditingController();
  final TextEditingController txtBSA = TextEditingController();
  final TextEditingController txtLeft_atrium = TextEditingController();
  final TextEditingController txtAortic_root = TextEditingController();
  final TextEditingController txtLVD_d = TextEditingController();
  final TextEditingController txtLVD_s = TextEditingController();
  final TextEditingController txtEF_global = TextEditingController();
  final TextEditingController txtEF_simpon = TextEditingController();
  final TextEditingController txtIVS_d = TextEditingController();
  final TextEditingController txtPW_d = TextEditingController();
  final TextEditingController txtRVD_d = TextEditingController();
  final TextEditingController txtTAPSE = TextEditingController();
  final TextEditingController txtLVEDV = TextEditingController();
  final TextEditingController txtLVESV = TextEditingController();
  final TextEditingController txtLeft_ventricle = TextEditingController();
  final TextEditingController txtGlobal_LV_systolic_function =
      TextEditingController();
  final TextEditingController txtGlobal_RV_systolic_function =
      TextEditingController();
  final TextEditingController txtSegmental_systolic_function =
      TextEditingController();
  final TextEditingController txtDiastolic_function = TextEditingController();
  final TextEditingController txtLA = TextEditingController();
  final TextEditingController txtRV = TextEditingController();
  final TextEditingController txtRA = TextEditingController();
  final TextEditingController txtMitral_valve = TextEditingController();
  final TextEditingController txtAortic_valve = TextEditingController();
  final TextEditingController txtAortic_valve_anulus = TextEditingController();
  final TextEditingController txtAortic_valve_PG = TextEditingController();
  final TextEditingController txtAortic_valve_MG = TextEditingController();
  final TextEditingController txtTricuspid_valve = TextEditingController();
  final TextEditingController txtTricuspid_valve_PAPs = TextEditingController();
  final TextEditingController txtTricuspid_valve_TRG = TextEditingController();
  final TextEditingController txtPulmonarv_valve = TextEditingController();
  final TextEditingController txtPulmonarv_valve_PG = TextEditingController();
  final TextEditingController txtInteratrial_septum = TextEditingController();
  final TextEditingController txtInterventricular_septum =
      TextEditingController();
  final TextEditingController txtPericardium = TextEditingController();
  final TextEditingController txtAscending_aorta = TextEditingController();
  final TextEditingController txtAscending_aorta_value =
      TextEditingController();
  final TextEditingController txtAortic_arch = TextEditingController();
  final TextEditingController txtDesending_aorta = TextEditingController();
  final TextEditingController txtConclusion = TextEditingController();
  final TextEditingController txtRecommendation = TextEditingController();

  @override
  void initState() {
    txtName.text = form_result.name == null ? '' : form_result.name.toString();
    txtGender.text =
        form_result.gender == null ? '' : form_result.gender.toString();
    txtExternal_id.text = form_result.external_id == null
        ? ''
        : form_result.external_id.toString();
    txtOperator_physician.text = form_result.operator_physician == null
        ? ''
        : form_result.operator_physician.toString();
    txtClinical_diagnosis.text = form_result.clinical_diagnosis == null
        ? ''
        : form_result.clinical_diagnosis.toString();
    txtBirth_year.text =
        form_result.birth_year == null ? '' : form_result.birth_year.toString();
    txtReferring_physician.text = form_result.referring_physician == null
        ? ''
        : form_result.referring_physician.toString();
    txtDate.text =
        form_result.date == null ? '' : UITools.convertDate(form_result.date!);
    txtBSA.text = form_result.BSA == null ? '' : form_result.BSA.toString();
    txtLeft_atrium.text = form_result.left_atrium == null
        ? ''
        : form_result.left_atrium.toString();
    txtAortic_root.text = form_result.aortic_root == null
        ? ''
        : form_result.aortic_root.toString();
    txtLVD_d.text =
        form_result.LVD_d == null ? '' : form_result.LVD_d.toString();
    txtLVD_s.text =
        form_result.LVD_s == null ? '' : form_result.LVD_s.toString();
    txtEF_global.text =
        form_result.EF_global == null ? '' : form_result.EF_global.toString();
    txtEF_simpon.text =
        form_result.EF_simpon == null ? '' : form_result.EF_simpon.toString();
    txtIVS_d.text =
        form_result.IVS_d == null ? '' : form_result.IVS_d.toString();
    txtPW_d.text = form_result.PW_d == null ? '' : form_result.PW_d.toString();
    txtRVD_d.text =
        form_result.RVD_d == null ? '' : form_result.RVD_d.toString();
    txtTAPSE.text =
        form_result.TAPSE == null ? '' : form_result.TAPSE.toString();
    txtLVEDV.text =
        form_result.LVEDV == null ? '' : form_result.LVEDV.toString();
    txtLVESV.text =
        form_result.LVESV == null ? '' : form_result.LVESV.toString();
    txtLeft_ventricle.text = form_result.left_ventricle == null
        ? ''
        : form_result.left_ventricle.toString();
    txtGlobal_LV_systolic_function.text =
        form_result.global_LV_systolic_function == null
            ? ''
            : form_result.global_LV_systolic_function.toString();
    txtGlobal_RV_systolic_function.text =
        form_result.global_RV_systolic_function == null
            ? ''
            : form_result.global_RV_systolic_function.toString();
    txtSegmental_systolic_function.text =
        form_result.segmental_systolic_function == null
            ? ''
            : form_result.segmental_systolic_function.toString();
    txtDiastolic_function.text = form_result.diastolic_function == null
        ? ''
        : form_result.diastolic_function.toString();
    txtLA.text = form_result.LA == null ? '' : form_result.LA.toString();
    txtRV.text = form_result.RV == null ? '' : form_result.RV.toString();
    txtRA.text = form_result.RA == null ? '' : form_result.RA.toString();
    txtMitral_valve.text = form_result.mitral_valve == null
        ? ''
        : form_result.mitral_valve.toString();
    txtAortic_valve.text = form_result.aortic_valve == null
        ? ''
        : form_result.aortic_valve.toString();
    txtAortic_valve_anulus.text = form_result.aortic_valve_anulus == null
        ? ''
        : form_result.aortic_valve_anulus.toString();
    txtAortic_valve_PG.text = form_result.aortic_valve_PG == null
        ? ''
        : form_result.aortic_valve_PG.toString();
    txtAortic_valve_MG.text = form_result.aortic_valve_MG == null
        ? ''
        : form_result.aortic_valve_MG.toString();
    txtTricuspid_valve.text = form_result.tricuspid_valve == null
        ? ''
        : form_result.tricuspid_valve.toString();
    txtTricuspid_valve_PAPs.text = form_result.tricuspid_valve_PAPs == null
        ? ''
        : form_result.tricuspid_valve_PAPs.toString();
    txtTricuspid_valve_TRG.text = form_result.tricuspid_valve_TRG == null
        ? ''
        : form_result.tricuspid_valve_TRG.toString();
    txtPulmonarv_valve.text = form_result.pulmonarv_valve == null
        ? ''
        : form_result.pulmonarv_valve.toString();
    txtPulmonarv_valve_PG.text = form_result.pulmonarv_valve_PG == null
        ? ''
        : form_result.pulmonarv_valve_PG.toString();
    txtInteratrial_septum.text = form_result.interatrial_septum == null
        ? ''
        : form_result.interatrial_septum.toString();
    txtInterventricular_septum.text =
        form_result.interventricular_septum == null
            ? ''
            : form_result.interventricular_septum.toString();
    txtPericardium.text = form_result.pericardium == null
        ? ''
        : form_result.pericardium.toString();
    txtAscending_aorta.text = form_result.ascending_aorta == null
        ? ''
        : form_result.ascending_aorta.toString();
    txtAscending_aorta_value.text = form_result.ascending_aorta_value == null
        ? ''
        : form_result.ascending_aorta_value.toString();
    txtAortic_arch.text = form_result.aortic_arch == null
        ? ''
        : form_result.aortic_arch.toString();
    txtDesending_aorta.text = form_result.desending_aorta == null
        ? ''
        : form_result.desending_aorta.toString();
    txtConclusion.text =
        form_result.conclusion == null ? '' : form_result.conclusion.toString();
    txtRecommendation.text = form_result.recommendation == null
        ? ''
        : form_result.recommendation.toString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: (form_result.id == null)
        //       ? Text('Add a new form_result')
        //       : Text('Edit form_result'),
        // ),
        body: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      buildRowName(),
                      buildRowGender(),
                      buildRowExternal_id(),
                      buildRowOperator_physician(),
                      buildRowClinical_diagnosis(),
                      buildRowBirth_year(),
                      buildRowReferring_physician(),
                      buildRowDate(),
                      buildRowBSA(),
                      buildRowLeft_atrium(),
                      buildRowAortic_root(),
                      buildRowLVD_d(),
                      buildRowLVD_s(),
                      buildRowEF_global(),
                      buildRowEF_simpon(),
                      buildRowIVS_d(),
                      buildRowPW_d(),
                      buildRowRVD_d(),
                      buildRowTAPSE(),
                      buildRowLVEDV(),
                      buildRowLVESV(),
                      buildRowLeft_ventricle(),
                      buildRowGlobal_LV_systolic_function(),
                      buildRowSegmental_systolic_function(),
                      buildRowDiastolic_function(),
                      buildRowLA(),
                      buildRowRA(),
                      buildRowRV(),
                      buildRowGlobal_RV_systolic_function(),
                      buildRowMitral_valve(),
                      buildRowAortic_valve(),
                      buildRowAortic_valve_anulus(),
                      buildRowAortic_valve_PG(),
                      buildRowAortic_valve_MG(),
                      buildRowTricuspid_valve(),
                      buildRowTricuspid_valve_PAPs(),
                      buildRowTricuspid_valve_TRG(),
                      buildRowPulmonarv_valve(),
                      buildRowPulmonarv_valve_PG(),
                      buildRowInteratrial_septum(),
                      buildRowInterventricular_septum(),
                      buildRowPericardium(),
                      buildRowAscending_aorta(),
                      buildRowAscending_aorta_value(),
                      buildRowAortic_arch(),
                      buildRowDesending_aorta(),
                      buildRowConclusion(),
                      buildRowRecommendation(),
                      // TextButton(
                      //   child: saveButton(),
                      //   onPressed: () {
                      //     if (_formKey.currentState!.validate()) {
                      //       // If the form is valid, display a Snackbar.
                      //       save();
                      //       /* Scaffold.of(context).showSnackBar(SnackBar(
                      //           duration: Duration(seconds: 2),
                      //           content: Text('Processing Data')));
                      //        */
                      //     }
                      //   },
                      // )
                    ],
                  ),
                )),
          ),
        ),
        floatingActionButton: Wrap(direction: Axis.horizontal, crossAxisAlignment: WrapCrossAlignment.center, children: [
          Container(
            padding: EdgeInsets.all(10),
            child: FloatingActionButton.small(
              onPressed: () {
                widget.setPage(0);
              },
              foregroundColor: Colors.white,
              child: Icon(Icons.chevron_left),
              tooltip: "Back",
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a Snackbar.
                  save();
                  /* Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 2),
                    content: Text('Processing Data')));
                  */
                }
              },
              foregroundColor: Colors.white,
              child: Icon(Icons.check),
              tooltip: "Save",
            ),
          ),
        ]));
  }

  Widget buildRowName() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Name';
        }
        return null;
      },
      controller: txtName,
      decoration: InputDecoration(labelText: 'Name'),
    );
  }

  Widget buildRowGender() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Gender';
        }
        return null;
      },
      controller: txtGender,
      decoration: InputDecoration(labelText: 'Gender'),
    );
  }

  Widget buildRowExternal_id() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtExternal_id,
      decoration: InputDecoration(labelText: 'ID'),
    );
  }

  Widget buildRowOperator_physician() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Operator Physician';
        }
        return null;
      },
      controller: txtOperator_physician,
      decoration: InputDecoration(labelText: 'Operator Physician'),
    );
  }

  Widget buildRowClinical_diagnosis() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Clinical Diagnosis';
        }
        return null;
      },
      controller: txtClinical_diagnosis,
      decoration: InputDecoration(labelText: 'Clinical Diagnosis'),
    );
  }

  Widget buildRowBirth_year() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtBirth_year,
      decoration: InputDecoration(labelText: 'Birth Year'),
    );
  }

  Widget buildRowReferring_physician() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Referring Physician';
        }
        return null;
      },
      controller: txtReferring_physician,
      decoration: InputDecoration(labelText: 'Referring Physician'),
    );
  }

  Widget buildRowDate() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Date';
        }
        return null;
      },
      controller: txtDate,
      decoration: InputDecoration(labelText: 'Date'),
    );
    // return TextFormField(
    //   onTap: () => UITools.showDateTimePicker(context,
    //       minTime: DateTime.parse('1900-01-01'), onConfirm: (sqfSelectedDate) {
    //     txtDate.text = UITools.convertDate(sqfSelectedDate);
    //     setState(() {
    //       form_result.date = sqfSelectedDate;
    //     });
    //   },
    //       currentTime: DateTime.tryParse(txtDate.text) ??
    //           form_result.date ??
    //           DateTime.now()),
    //   controller: txtDate,
    //   decoration: InputDecoration(labelText: 'Date'),
    // );
  }

  Widget buildRowBSA() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter BSA';
        }
        return null;
      },
      controller: txtBSA,
      decoration: InputDecoration(labelText: 'BSA'),
    );
  }

  Widget buildRowLeft_atrium() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtLeft_atrium,
      decoration: InputDecoration(labelText: 'Left Atrium'),
    );
  }

  Widget buildRowAortic_root() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtAortic_root,
      decoration: InputDecoration(labelText: 'Aortic Root'),
    );
  }

  Widget buildRowLVD_d() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtLVD_d,
      decoration: InputDecoration(labelText: 'LVD d'),
    );
  }

  Widget buildRowLVD_s() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtLVD_s,
      decoration: InputDecoration(labelText: 'LVD s'),
    );
  }

  Widget buildRowEF_global() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtEF_global,
      decoration: InputDecoration(labelText: 'EF Global'),
    );
  }

  Widget buildRowEF_simpon() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtEF_simpon,
      decoration: InputDecoration(labelText: 'EF Simpon'),
    );
  }

  Widget buildRowIVS_d() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtIVS_d,
      decoration: InputDecoration(labelText: 'IVS d'),
    );
  }

  Widget buildRowPW_d() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtPW_d,
      decoration: InputDecoration(labelText: 'PW d'),
    );
  }

  Widget buildRowRVD_d() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtRVD_d,
      decoration: InputDecoration(labelText: 'RVD d'),
    );
  }

  Widget buildRowTAPSE() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtTAPSE,
      decoration: InputDecoration(labelText: 'TAPSE'),
    );
  }

  Widget buildRowLVEDV() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtLVEDV,
      decoration: InputDecoration(labelText: 'LVEDV'),
    );
  }

  Widget buildRowLVESV() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtLVESV,
      decoration: InputDecoration(labelText: 'LVESV'),
    );
  }

  Widget buildRowLeft_ventricle() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Left Ventricle';
        }
        return null;
      },
      controller: txtLeft_ventricle,
      decoration: InputDecoration(labelText: 'Left Ventricle'),
    );
  }

  Widget buildRowGlobal_LV_systolic_function() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Global LV systolic function';
        }
        return null;
      },
      controller: txtGlobal_LV_systolic_function,
      decoration: InputDecoration(labelText: 'Global LV systolic function'),
    );
  }

  Widget buildRowGlobal_RV_systolic_function() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Global RV systolic function';
        }
        return null;
      },
      controller: txtGlobal_RV_systolic_function,
      decoration: InputDecoration(labelText: 'Global RV systolic function'),
    );
  }

  Widget buildRowSegmental_systolic_function() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Segmental systolic function';
        }
        return null;
      },
      controller: txtSegmental_systolic_function,
      decoration: InputDecoration(labelText: 'Segmental systolic function'),
    );
  }

  Widget buildRowDiastolic_function() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Diastolic function';
        }
        return null;
      },
      controller: txtDiastolic_function,
      decoration: InputDecoration(labelText: 'Diastolic function'),
    );
  }

  Widget buildRowLA() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter LA';
        }
        return null;
      },
      controller: txtLA,
      decoration: InputDecoration(labelText: 'LA'),
    );
  }

  Widget buildRowRV() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter RV';
        }
        return null;
      },
      controller: txtRV,
      decoration: InputDecoration(labelText: 'RV'),
    );
  }

  Widget buildRowRA() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter RA';
        }
        return null;
      },
      controller: txtRA,
      decoration: InputDecoration(labelText: 'RA'),
    );
  }

  Widget buildRowMitral_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Mitral Valve';
        }
        return null;
      },
      controller: txtMitral_valve,
      decoration: InputDecoration(labelText: 'Mitral Valve'),
    );
  }

  Widget buildRowAortic_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Aortic Valve';
        }
        return null;
      },
      controller: txtAortic_valve,
      decoration: InputDecoration(labelText: 'Aortic Valve'),
    );
  }

  Widget buildRowAortic_valve_anulus() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtAortic_valve_anulus,
      decoration: InputDecoration(labelText: 'Aortic Valve anulus'),
    );
  }

  Widget buildRowAortic_valve_PG() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtAortic_valve_PG,
      decoration: InputDecoration(labelText: 'Aortic Valve PG'),
    );
  }

  Widget buildRowAortic_valve_MG() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtAortic_valve_MG,
      decoration: InputDecoration(labelText: 'Aortic Valve MG'),
    );
  }

  Widget buildRowTricuspid_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Tricuspid Valve';
        }
        return null;
      },
      controller: txtTricuspid_valve,
      decoration: InputDecoration(labelText: 'Tricuspid Valve'),
    );
  }

  Widget buildRowTricuspid_valve_PAPs() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtTricuspid_valve_PAPs,
      decoration: InputDecoration(labelText: 'Tricuspid Valve PAPs'),
    );
  }

  Widget buildRowTricuspid_valve_TRG() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtTricuspid_valve_TRG,
      decoration: InputDecoration(labelText: 'Tricuspid Valve TRG'),
    );
  }

  Widget buildRowPulmonarv_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Pulmonarv Valve';
        }
        return null;
      },
      controller: txtPulmonarv_valve,
      decoration: InputDecoration(labelText: 'Pulmonarv Valve'),
    );
  }

  Widget buildRowPulmonarv_valve_PG() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtPulmonarv_valve_PG,
      decoration: InputDecoration(labelText: 'Pulmonarv Valve PG'),
    );
  }

  Widget buildRowInteratrial_septum() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Interatrial septum';
        }
        return null;
      },
      decoration: InputDecoration(labelText: 'Interatrial septum'),
    );
  }

  Widget buildRowInterventricular_septum() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Interventricular septum';
        }
        return null;
      },
      controller: txtInterventricular_septum,
      decoration: InputDecoration(labelText: 'Interventricular septum'),
    );
  }

  Widget buildRowPericardium() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Pericardium';
        }
        return null;
      },
      controller: txtPericardium,
      decoration: InputDecoration(labelText: 'Pericardium'),
    );
  }

  Widget buildRowAscending_aorta() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Ascending aorta';
        }
        return null;
      },
      controller: txtAscending_aorta,
      decoration: InputDecoration(labelText: 'Ascending aorta'),
    );
  }

  Widget buildRowAscending_aorta_value() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtAscending_aorta_value,
      decoration: InputDecoration(labelText: 'Ascending aorta value'),
    );
  }

  Widget buildRowAortic_arch() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Aortic arch';
        }
        return null;
      },
      controller: txtAortic_arch,
      decoration: InputDecoration(labelText: 'Aortic arch'),
    );
  }

  Widget buildRowDesending_aorta() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Desending aorta';
        }
        return null;
      },
      controller: txtDesending_aorta,
      decoration: InputDecoration(labelText: 'Desending aorta'),
    );
  }

  Widget buildRowConclusion() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Conclusion';
        }
        return null;
      },
      controller: txtConclusion,
      decoration: InputDecoration(labelText: 'Conclusion'),
    );
  }

  Widget buildRowRecommendation() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Recommendation';
        }
        return null;
      },
      controller: txtRecommendation,
      decoration: InputDecoration(labelText: 'Recommendation'),
    );
  }

  Container saveButton() {
    return Container(
      padding: const EdgeInsets.all(7.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(95, 66, 119, 1.0),
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5.0)),
      child: Text(
        'Save',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  void save() async {
    final dateText = txtDate.text.split(" ")[0].split("/");
    DateTime? date = DateTime.now();
    if (dateText.length >= 3) {
      final year = int.tryParse(dateText[0]);
      final month = int.tryParse(dateText[1]);
      final day = int.tryParse(dateText[2]);
      if (year != null && month != null && day != null) {
        date = Jalali(year, month, day).toDateTime();
      }
    }

    form_result
      ..name = txtName.text
      ..gender = txtGender.text
      ..external_id = int.tryParse(txtExternal_id.text)
      ..operator_physician = txtOperator_physician.text
      ..clinical_diagnosis = txtClinical_diagnosis.text
      ..birth_year = int.tryParse(txtBirth_year.text)
      ..referring_physician = txtReferring_physician.text
      ..date = date
      ..BSA = txtBSA.text
      ..left_atrium = int.tryParse(txtLeft_atrium.text)
      ..aortic_root = int.tryParse(txtAortic_root.text)
      ..LVD_d = int.tryParse(txtLVD_d.text)
      ..LVD_s = int.tryParse(txtLVD_s.text)
      ..EF_global = int.tryParse(txtEF_global.text)
      ..EF_simpon = int.tryParse(txtEF_simpon.text)
      ..IVS_d = int.tryParse(txtIVS_d.text)
      ..PW_d = int.tryParse(txtPW_d.text)
      ..RVD_d = int.tryParse(txtRVD_d.text)
      ..TAPSE = int.tryParse(txtTAPSE.text)
      ..LVEDV = int.tryParse(txtLVEDV.text)
      ..LVESV = int.tryParse(txtLVESV.text)
      ..left_ventricle = txtLeft_ventricle.text
      ..global_LV_systolic_function = txtGlobal_LV_systolic_function.text
      ..global_RV_systolic_function = txtGlobal_RV_systolic_function.text
      ..segmental_systolic_function = txtSegmental_systolic_function.text
      ..diastolic_function = txtDiastolic_function.text
      ..LA = txtLA.text
      ..RV = txtRV.text
      ..RA = txtRA.text
      ..mitral_valve = txtMitral_valve.text
      ..aortic_valve = txtAortic_valve.text
      ..aortic_valve_anulus = int.tryParse(txtAortic_valve_anulus.text)
      ..aortic_valve_PG = int.tryParse(txtAortic_valve_PG.text)
      ..aortic_valve_MG = int.tryParse(txtAortic_valve_MG.text)
      ..tricuspid_valve = txtTricuspid_valve.text
      ..tricuspid_valve_PAPs = int.tryParse(txtTricuspid_valve_PAPs.text)
      ..tricuspid_valve_TRG = int.tryParse(txtTricuspid_valve_TRG.text)
      ..pulmonarv_valve = txtPulmonarv_valve.text
      ..pulmonarv_valve_PG = int.tryParse(txtPulmonarv_valve_PG.text)
      ..interatrial_septum = txtInteratrial_septum.text
      ..interventricular_septum = txtInterventricular_septum.text
      ..pericardium = txtPericardium.text
      ..ascending_aorta = txtAscending_aorta.text
      ..ascending_aorta_value = int.tryParse(txtAscending_aorta_value.text)
      ..aortic_arch = txtAortic_arch.text
      ..desending_aorta = txtDesending_aorta.text
      ..conclusion = txtConclusion.text
      ..recommendation = txtRecommendation.text;

    // form_result
    //   ..name = "گیتا قاسم پور"
    //   ..gender = "خانم"
    //   ..external_id = 1487477
    //   ..operator_physician = "Dr. Hali"
    //   ..clinical_diagnosis = "."
    //   ..birth_year = 1373
    //   ..referring_physician = "."
    //   ..date = Jalali(1400, 5, 20).toDateTime()
    //   ..BSA = "."
    //   ..left_atrium = 37
    //   ..aortic_root = 28
    //   ..LVD_d = 47
    //   ..LVD_s = 34
    //   ..EF_global = 55
    //   ..EF_simpon = 0
    //   ..IVS_d = 8
    //   ..PW_d = 8
    //   ..RVD_d = 28
    //   ..TAPSE = 21
    //   ..LVEDV = 0
    //   ..LVESV = 0
    //   ..left_ventricle = "normal in size"
    //   ..global_LV_systolic_function = "normal"
    //   ..global_RV_systolic_function = "normal"
    //   ..segmental_systolic_function = "normal"
    //   ..diastolic_function = "normal"
    //   ..LA = "normal in size"
    //   ..RV = "normal in size"
    //   ..RA = "normal in size"
    //   ..mitral_valve = "mild MR"
    //   ..aortic_valve = "No AI"
    //   ..aortic_valve_anulus = 20
    //   ..aortic_valve_PG = 10
    //   ..aortic_valve_MG = 7
    //   ..tricuspid_valve = "mild TR"
    //   ..tricuspid_valve_PAPs = 30
    //   ..tricuspid_valve_TRG = 25
    //   ..pulmonarv_valve = "trivial PI"
    //   ..pulmonarv_valve_PG = 9
    //   ..interatrial_septum = "normal"
    //   ..interventricular_septum = "normal"
    //   ..pericardium = "normal"
    //   ..ascending_aorta = "normal"
    //   ..ascending_aorta_value = 30
    //   ..aortic_arch = "normal"
    //   ..desending_aorta = "normal"
    //   ..conclusion = "test test test conclusion"
    //   ..recommendation = ".";
    await form_result.save();
    if (form_result.saveResult!.success) {
      // Navigator.pop(context, true);
      widget.setPage(0);
    } else {
      UITools(context).alertDialog(form_result.saveResult.toString(),
          title: 'save Form Failed!', callBack: () {});
    }
  }
}
