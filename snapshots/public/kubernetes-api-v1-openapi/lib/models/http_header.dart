// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// HTTPHeader describes a custom header to be used in HTTP probes
@immutable final class HttpHeader {const HttpHeader({this.name = '', this.value = '', });

factory HttpHeader.fromJson(Map<String, dynamic> json) { return HttpHeader(
  name: json['name'] as String,
  value: json['value'] as String,
); }

/// The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
final String name;

/// The header field value
final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
HttpHeader copyWith({String? name, String? value, }) { return HttpHeader(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HttpHeader &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'HttpHeader(name: $name, value: $value)'; } 
 }
