// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_page_js_variables.dart';final class UrlscannerGetScanResponseResultScanPageJs {const UrlscannerGetScanResponseResultScanPageJs({required this.variables});

factory UrlscannerGetScanResponseResultScanPageJs.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanPageJs(
  variables: (json['variables'] as List<dynamic>).map((e) => UrlscannerGetScanResponseResultScanPageJsVariables.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerGetScanResponseResultScanPageJsVariables> variables;

Map<String, dynamic> toJson() { return {
  'variables': variables.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('variables'); } 
UrlscannerGetScanResponseResultScanPageJs copyWith({List<UrlscannerGetScanResponseResultScanPageJsVariables>? variables}) { return UrlscannerGetScanResponseResultScanPageJs(
  variables: variables ?? this.variables,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanPageJs &&
          listEquals(variables, other.variables); } 
@override int get hashCode { return Object.hashAll(variables).hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanPageJs(variables: $variables)'; } 
 }
