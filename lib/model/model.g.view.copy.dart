// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SqfEntityFormGenerator
// **************************************************************************

part of 'model.dart';

class Form_resultAdd extends StatefulWidget {
  Form_resultAdd(this._form_result);
  final dynamic _form_result;
  @override
  State<StatefulWidget> createState() =>
      Form_resultAddState(_form_result as Form_result);
}

class Form_resultAddState extends State {
  Form_resultAddState(this.form_result);
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
  final TextEditingController txtSegmental_systolic_function =
      TextEditingController();
  final TextEditingController txtLA = TextEditingController();
  final TextEditingController txtRV = TextEditingController();
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
    txtSegmental_systolic_function.text =
        form_result.segmental_systolic_function == null
            ? ''
            : form_result.segmental_systolic_function.toString();
    txtLA.text = form_result.LA == null ? '' : form_result.LA.toString();
    txtRV.text = form_result.RV == null ? '' : form_result.RV.toString();
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
      appBar: AppBar(
        title: (form_result.id == null)
            ? Text('Add a new form_result')
            : Text('Edit form_result'),
      ),
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
                    buildRowLA(),
                    buildRowRV(),
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
                    TextButton(
                      child: saveButton(),
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
                    )
                  ],
                ),
              )),
        ),
      ),
    );
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
      decoration: InputDecoration(labelText: 'External_id'),
    );
  }

  Widget buildRowOperator_physician() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Operator_physician';
        }
        return null;
      },
      controller: txtOperator_physician,
      decoration: InputDecoration(labelText: 'Operator_physician'),
    );
  }

  Widget buildRowClinical_diagnosis() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Clinical_diagnosis';
        }
        return null;
      },
      controller: txtClinical_diagnosis,
      decoration: InputDecoration(labelText: 'Clinical_diagnosis'),
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
      decoration: InputDecoration(labelText: 'Birth_year'),
    );
  }

  Widget buildRowReferring_physician() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Referring_physician';
        }
        return null;
      },
      controller: txtReferring_physician,
      decoration: InputDecoration(labelText: 'Referring_physician'),
    );
  }

  Widget buildRowDate() {
    return TextFormField(
      onTap: () => UITools.showDateTimePicker(context,
          minTime: DateTime.parse('1900-01-01'), onConfirm: (sqfSelectedDate) {
        txtDate.text = UITools.convertDate(sqfSelectedDate);
        setState(() {
          form_result.date = sqfSelectedDate;
        });
      },
          currentTime: DateTime.tryParse(txtDate.text) ??
              form_result.date ??
              DateTime.now()),
      controller: txtDate,
      decoration: InputDecoration(labelText: 'Date'),
    );
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
      decoration: InputDecoration(labelText: 'Left_atrium'),
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
      decoration: InputDecoration(labelText: 'Aortic_root'),
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
      decoration: InputDecoration(labelText: 'LVD_d'),
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
      decoration: InputDecoration(labelText: 'LVD_s'),
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
      decoration: InputDecoration(labelText: 'EF_global'),
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
      decoration: InputDecoration(labelText: 'EF_simpon'),
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
      decoration: InputDecoration(labelText: 'IVS_d'),
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
      decoration: InputDecoration(labelText: 'PW_d'),
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
      decoration: InputDecoration(labelText: 'RVD_d'),
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
          return 'Please enter Left_ventricle';
        }
        return null;
      },
      controller: txtLeft_ventricle,
      decoration: InputDecoration(labelText: 'Left_ventricle'),
    );
  }

  Widget buildRowGlobal_LV_systolic_function() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Global_LV_systolic_function';
        }
        return null;
      },
      controller: txtGlobal_LV_systolic_function,
      decoration: InputDecoration(labelText: 'Global_LV_systolic_function'),
    );
  }

  Widget buildRowSegmental_systolic_function() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Segmental_systolic_function';
        }
        return null;
      },
      controller: txtSegmental_systolic_function,
      decoration: InputDecoration(labelText: 'Segmental_systolic_function'),
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

  Widget buildRowMitral_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Mitral_valve';
        }
        return null;
      },
      controller: txtMitral_valve,
      decoration: InputDecoration(labelText: 'Mitral_valve'),
    );
  }

  Widget buildRowAortic_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Aortic_valve';
        }
        return null;
      },
      controller: txtAortic_valve,
      decoration: InputDecoration(labelText: 'Aortic_valve'),
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
      decoration: InputDecoration(labelText: 'Aortic_valve_anulus'),
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
      decoration: InputDecoration(labelText: 'Aortic_valve_PG'),
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
      decoration: InputDecoration(labelText: 'Aortic_valve_MG'),
    );
  }

  Widget buildRowTricuspid_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Tricuspid_valve';
        }
        return null;
      },
      controller: txtTricuspid_valve,
      decoration: InputDecoration(labelText: 'Tricuspid_valve'),
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
      decoration: InputDecoration(labelText: 'Tricuspid_valve_PAPs'),
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
      decoration: InputDecoration(labelText: 'Tricuspid_valve_TRG'),
    );
  }

  Widget buildRowPulmonarv_valve() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Pulmonarv_valve';
        }
        return null;
      },
      controller: txtPulmonarv_valve,
      decoration: InputDecoration(labelText: 'Pulmonarv_valve'),
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
      decoration: InputDecoration(labelText: 'Pulmonarv_valve_PG'),
    );
  }

  Widget buildRowInteratrial_septum() {
    return TextFormField(
      validator: (value) {
        if (int.tryParse(value!) == null) {
          return 'Please Enter valid number (required)';
        }

        return null;
      },
      controller: txtInteratrial_septum,
      decoration: InputDecoration(labelText: 'Interatrial_septum'),
    );
  }

  Widget buildRowInterventricular_septum() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Interventricular_septum';
        }
        return null;
      },
      controller: txtInterventricular_septum,
      decoration: InputDecoration(labelText: 'Interventricular_septum'),
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
          return 'Please enter Ascending_aorta';
        }
        return null;
      },
      controller: txtAscending_aorta,
      decoration: InputDecoration(labelText: 'Ascending_aorta'),
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
      decoration: InputDecoration(labelText: 'Ascending_aorta_value'),
    );
  }

  Widget buildRowAortic_arch() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Aortic_arch';
        }
        return null;
      },
      controller: txtAortic_arch,
      decoration: InputDecoration(labelText: 'Aortic_arch'),
    );
  }

  Widget buildRowDesending_aorta() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Desending_aorta';
        }
        return null;
      },
      controller: txtDesending_aorta,
      decoration: InputDecoration(labelText: 'Desending_aorta'),
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
    final _date = DateTime.tryParse(txtDate.text);

    form_result
      ..name = txtName.text
      ..gender = txtGender.text
      ..external_id = int.tryParse(txtExternal_id.text)
      ..operator_physician = txtOperator_physician.text
      ..clinical_diagnosis = txtClinical_diagnosis.text
      ..birth_year = int.tryParse(txtBirth_year.text)
      ..referring_physician = txtReferring_physician.text
      ..date = _date
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
      ..segmental_systolic_function = txtSegmental_systolic_function.text
      ..LA = txtLA.text
      ..RV = txtRV.text
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
      ..interatrial_septum = int.tryParse(txtInteratrial_septum.text)
      ..interventricular_septum = txtInterventricular_septum.text
      ..pericardium = txtPericardium.text
      ..ascending_aorta = txtAscending_aorta.text
      ..ascending_aorta_value = int.tryParse(txtAscending_aorta_value.text)
      ..aortic_arch = txtAortic_arch.text
      ..desending_aorta = txtDesending_aorta.text
      ..conclusion = txtConclusion.text
      ..recommendation = txtRecommendation.text;
    await form_result.save();
    if (form_result.saveResult!.success) {
      Navigator.pop(context, true);
    } else {
      UITools(context).alertDialog(form_result.saveResult.toString(),
          title: 'save Form_result Failed!', callBack: () {});
    }
  }
}
