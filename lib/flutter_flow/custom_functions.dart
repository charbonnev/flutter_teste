import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? returnStringFromObject(
  dynamic object,
  String? key,
) {
  // Receives a JSON and a key returns the JSON[key] value as string
  if (object == null || key == null) {
    return null;
  }
  final Map<String, dynamic> json = jsonDecode(jsonEncode(object));
  return json[key]?.toString();
}

dynamic removeKeyJSON(
  dynamic json,
  String key,
) {
  // removes key from json and returns json without key
  if (json == null) {
    json = {};
  } else {
    json.remove(key);
  }
  return json;
}

dynamic addKeyValueInt(
  dynamic json,
  String key,
  int? value,
) {
  // Adds the Key Value pair to the JSON, returns the modified JSON
  if (json == null) {
    json = {};
  }
  json[key] = value;
  return json;
}

dynamic addKeyJSON(
  dynamic json,
  String key,
  dynamic value,
) {
  // Adds the Key Value pair to the JSON, returns the modified JSON
  if (json == null) {
    json = {};
  }
  json[key] = value;
  return json;
}

dynamic addKeyValueStr(
  dynamic json,
  String key,
  String? value,
) {
  // Adds the Key Value pair to the JSON, returns the modified JSON
  if (json == null) {
    json = {};
  }
  json[key] = value;
  return json;
}

dynamic returnJsonFromObject(
  dynamic object,
  String? key,
) {
  // Receives a JSON and a key returns the JSON[key] value as JSON
  if (object == null || key == null) {
    return null;
  }
  final Map<String, dynamic> json = jsonDecode(jsonEncode(object));
  return json[key];
}

String? makeQueryStrFromJSON(dynamic jsonFilters) {
  //jsonWhoseKeysAreQueryParamsAndValuesAreObjectsWithIdField
  // Gets a JSON and returns a queryStr formated like "&${key1}=eq.${value1.id}"
  String queryStr = '';
  jsonFilters.forEach((key, value) {
    if (value['id'] != null) {
      queryStr += '&$key=eq.${value['id']}';
    }
  });
  return queryStr.isNotEmpty ? "&${queryStr.substring(1)}" : null;
}

List<String>? searchJSONListforMembersFieldsValues(
  List<dynamic>? jsonList,
  List<String>? valuesToSearchFor,
  String? tgtKey,
  String? lookupKey,
) {
  // Gets the value of lookupKey in the members of jsonList where tgtKey's value is in valuesToSearchFor
  if (jsonList == null ||
      valuesToSearchFor == null ||
      tgtKey == null ||
      lookupKey == null) {
    return null;
  }

  final List<String> results = [];

  for (final dynamic json in jsonList) {
    final dynamic tgtValue = json[tgtKey];
    if (tgtValue != null && valuesToSearchFor.contains(tgtValue.toString())) {
      final dynamic lookupValue = json[lookupKey];
      if (lookupValue != null) {
        results.add(lookupValue.toString());
      }
    }
  }

  return results.isNotEmpty ? results : null;
}

List<String>? getKeysFromJSON(dynamic json) {
  // Get list of strings from the keys of the JSON object
  if (json == null) return null;
  if (json is String) {
    try {
      json = jsonDecode(json);
    } catch (e) {
      return null;
    }
  }
  if (json is! Map<String, dynamic>) return null;
  return json.keys.toList();
}

int? returnIntFromObject(
  dynamic object,
  String? key,
) {
  // Receives a JSON and a key returns the JSON[key] value as string
  if (object == null || key == null) {
    return null;
  }
  final Map<String, dynamic> json = jsonDecode(jsonEncode(object));
  return json[key]?.toInt();
}

DateTime? iSO8601toDatetime(String? iSO8601String) {
  // Gets ISO 8601 formatted string and returns DateTime
  if (iSO8601String == null) return null;
  return DateTime.parse(iSO8601String);
}

List<dynamic>? searchJSONListforKeyValue(
  List<dynamic>? jsonList,
  String key,
  String value,
) {
  // returns JSONs in jsonList where key 'key' is 'value'. Does string comparissons.
  if (jsonList == null) return null;

  final List<dynamic> results = [];

  for (final json in jsonList) {
    if (json is Map && json[key].toString() == value) {
      results.add(json);
    }
  }

  return results.isEmpty ? null : results;
}
