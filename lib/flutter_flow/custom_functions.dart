import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int? numerzamowienia() {
  int randomNum = math.Random().nextInt(1000000000);
  return randomNum;
}

DateTime? dodajMinutyDoDaty(
  DateTime? datadodania,
  int? minuty,
) {
  if (datadodania == null || minuty == null) {
    return null; // Return null if any of the parameters are null
  }
  return datadodania.add(Duration(minutes: minuty));
}

DateTime getFirstOfMonth() {
  // returns the first of the month
  return DateTime(DateTime.now().year, DateTime.now().month, 1);
}

int? roznicaminuty(
  DateTime? date1,
  DateTime? date2,
) {
  // variables: date1, date2. Subtract date2 date1 and give minutes as integer
  if (date1 == null || date2 == null) {
    return null; // Return null if any of the parameters are null
  }
  int differenceInMinutes = date2.difference(date1).inMinutes;
  return differenceInMinutes;
}
