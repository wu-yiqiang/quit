import 'package:flutter/material.dart';
import 'package:quit/utils/util_object.dart';

TimeOfDay? stringToTimeOfDay(String? string) {
  if (ObjectUtil.isEmpty(string)) return null;
  List<String> items = string!.split(":");
  if (ObjectUtil.isEmpty(items) || items.length != 2) return null;
  TimeOfDay? timeOfDay;
  try {
    timeOfDay = TimeOfDay(hour: int.parse(items[0]), minute: int.parse(items[1]));
  } catch(e) {
    timeOfDay = null;
  }
  return timeOfDay;
}

DateTime? stringToDateTime(String? dateString) {
  String formattedString = dateString!.replaceAll(".", "-");
  DateTime? dateTime;
  try{
    dateTime = DateTime.parse(formattedString);
  } catch(e) {
    dateTime = null;
  }
  return dateTime;
}