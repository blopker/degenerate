// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanResponseResultScanPageJsVariables {const UrlscannerGetScanResponseResultScanPageJsVariables({required this.name, required this.type, });

factory UrlscannerGetScanResponseResultScanPageJsVariables.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanPageJsVariables(
  name: json['name'] as String,
  type: json['type'] as String,
); }

final String name;

final String type;

Map<String, dynamic> toJson() { return {
  'name': name,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('type') && json['type'] is String; } 
UrlscannerGetScanResponseResultScanPageJsVariables copyWith({String? name, String? type, }) { return UrlscannerGetScanResponseResultScanPageJsVariables(
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanPageJsVariables &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, type); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanPageJsVariables(name: $name, type: $type)'; } 
 }
