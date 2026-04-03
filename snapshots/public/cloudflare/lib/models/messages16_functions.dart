// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages16Functions {const Messages16Functions({required this.code, required this.name, });

factory Messages16Functions.fromJson(Map<String, dynamic> json) { return Messages16Functions(
  code: json['code'] as String,
  name: json['name'] as String,
); }

final String code;

final String name;

Map<String, dynamic> toJson() { return {
  'code': code,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is String &&
      json.containsKey('name') && json['name'] is String; } 
Messages16Functions copyWith({String? code, String? name, }) { return Messages16Functions(
  code: code ?? this.code,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages16Functions &&
          code == other.code &&
          name == other.name; } 
@override int get hashCode { return Object.hash(code, name); } 
@override String toString() { return 'Messages16Functions(code: $code, name: $name)'; } 
 }
