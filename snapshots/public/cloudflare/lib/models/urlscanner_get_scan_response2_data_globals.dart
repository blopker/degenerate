// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanResponse2DataGlobals {const UrlscannerGetScanResponse2DataGlobals({required this.prop, required this.type, });

factory UrlscannerGetScanResponse2DataGlobals.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2DataGlobals(
  prop: json['prop'] as String,
  type: json['type'] as String,
); }

final String prop;

final String type;

Map<String, dynamic> toJson() { return {
  'prop': prop,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('prop') && json['prop'] is String &&
      json.containsKey('type') && json['type'] is String; } 
UrlscannerGetScanResponse2DataGlobals copyWith({String? prop, String? type, }) { return UrlscannerGetScanResponse2DataGlobals(
  prop: prop ?? this.prop,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2DataGlobals &&
          prop == other.prop &&
          type == other.type; } 
@override int get hashCode { return Object.hash(prop, type); } 
@override String toString() { return 'UrlscannerGetScanResponse2DataGlobals(prop: $prop, type: $type)'; } 
 }
