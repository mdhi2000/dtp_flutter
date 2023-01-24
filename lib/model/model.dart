import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

import '../tools/helper.dart';
import 'view.list.dart';

part 'model.g.dart';
part 'model.g.view.dart';

const tableFormResult = SqfEntityTable(
    tableName: "form_result",
    primaryKeyName: 'id',
    primaryKeyType: PrimaryKeyType.integer_auto_incremental,
    useSoftDeleting: true,
    modelName: null,
    fields: [
      SqfEntityField('name', DbType.text, isNotNull: true),
      SqfEntityField('gender', DbType.text, isNotNull: true),
      SqfEntityField('external_id', DbType.integer, isNotNull: true),
      SqfEntityField('operator_physician', DbType.text, isNotNull: true),
      SqfEntityField('clinical_diagnosis', DbType.text, isNotNull: true),
      SqfEntityField('birth_year', DbType.integer, isNotNull: true),
      SqfEntityField('referring_physician', DbType.text, isNotNull: true),
      SqfEntityField('date', DbType.date, isNotNull: true),
      SqfEntityField('BSA', DbType.text, isNotNull: true),
      SqfEntityField('left_atrium', DbType.integer, isNotNull: true),
      SqfEntityField('aortic_root', DbType.integer, isNotNull: true),
      SqfEntityField('LVD_d', DbType.integer, isNotNull: true),
      SqfEntityField('LVD_s', DbType.integer, isNotNull: true),
      SqfEntityField('EF_global', DbType.integer, isNotNull: true),
      SqfEntityField('EF_simpon', DbType.integer, isNotNull: true),
      SqfEntityField('IVS_d', DbType.integer, isNotNull: true),
      SqfEntityField('PW_d', DbType.integer, isNotNull: true),
      SqfEntityField('RVD_d', DbType.integer, isNotNull: true),
      SqfEntityField('TAPSE', DbType.integer, isNotNull: true),
      SqfEntityField('LVEDV', DbType.integer, isNotNull: true),
      SqfEntityField('LVESV', DbType.integer, isNotNull: true),
      SqfEntityField('left_ventricle', DbType.text, isNotNull: true),
      SqfEntityField('global_LV_systolic_function', DbType.text,
          isNotNull: true),
      SqfEntityField('global_RV_systolic_function', DbType.text,
          isNotNull: true),
      SqfEntityField('segmental_systolic_function', DbType.text,
          isNotNull: true),
      SqfEntityField('diastolic_function', DbType.text,
          isNotNull: true),
      SqfEntityField('LA', DbType.text, isNotNull: true),
      SqfEntityField('RV', DbType.text, isNotNull: true),
      SqfEntityField('RA', DbType.text, isNotNull: true),
      SqfEntityField('mitral_valve', DbType.text, isNotNull: true),
      SqfEntityField('aortic_valve', DbType.text, isNotNull: true),
      SqfEntityField('aortic_valve_anulus', DbType.integer, isNotNull: true),
      SqfEntityField('aortic_valve_PG', DbType.integer, isNotNull: true),
      SqfEntityField('aortic_valve_MG', DbType.integer, isNotNull: true),
      SqfEntityField('tricuspid_valve', DbType.text, isNotNull: true),
      SqfEntityField('tricuspid_valve_PAPs', DbType.integer, isNotNull: true),
      SqfEntityField('tricuspid_valve_TRG', DbType.integer, isNotNull: true),
      SqfEntityField('pulmonarv_valve', DbType.text, isNotNull: true),
      SqfEntityField('pulmonarv_valve_PG', DbType.integer, isNotNull: true),
      SqfEntityField('interatrial_septum', DbType.text, isNotNull: true),
      SqfEntityField('interventricular_septum', DbType.text, isNotNull: true),
      SqfEntityField('pericardium', DbType.text, isNotNull: true),
      SqfEntityField('ascending_aorta', DbType.text, isNotNull: true),
      SqfEntityField('ascending_aorta_value', DbType.integer, isNotNull: true),
      SqfEntityField('aortic_arch', DbType.text, isNotNull: true),
      SqfEntityField('desending_aorta', DbType.text, isNotNull: true),
      SqfEntityField('conclusion', DbType.text, isNotNull: true),
      SqfEntityField('recommendation', DbType.text, isNotNull: true),
    ]);


const seqIdentity = SqfEntitySequence(
  sequenceName: 'identity',
  //maxValue:  10000, /* optional. default is max int (9.223.372.036.854.775.807) */
  //modelName: 'SQEidentity',
  /* optional. SqfEntity will set it to sequenceName automatically when the modelName is null*/
  //cycle : false,    /* optional. default is false; */
  //minValue = 0;     /* optional. default is 0 */
  //incrementBy = 1;  /* optional. default is 1 */
  // startWith = 0;   /* optional. default is 0 */
);

@SqfEntityBuilder(myDbModel)
const myDbModel = SqfEntityModel(
    modelName: 'MyDbModel',
    databaseName: 'data.sqlite',
    password:
        "Livan12345678", // You can set a password if you want to use crypted database (For more information: https://github.com/sqlcipher/sqlcipher)
    // put defined tables into the tables list.
    databaseTables: [tableFormResult],
    // You can define tables to generate add/edit view forms if you want to use Form Generator property
    formTables: [tableFormResult],
    // put defined sequences into the sequences list.
    sequences: [seqIdentity],
    dbVersion: 2,
    // This value is optional. When bundledDatabasePath is empty then
    // EntityBase creats a new database when initializing the database
    bundledDatabasePath: "assets/data.sqlite", //         'assets/sample.db'
    // This value is optional. When databasePath is null then
    // EntityBase uses the default path from sqflite.getDatabasesPath()
    // If you want to set a physically path just set a directory like: '/Volumes/Repo/MyProject/db',
    databasePath: null,
    defaultColumns: [
      // SqfEntityField('dateCreated', DbType.datetime,
      //     defaultValue: 'DateTime.now()'),
    ]);
