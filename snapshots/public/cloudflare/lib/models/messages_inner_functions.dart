// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MessagesInnerFunctions {const MessagesInnerFunctions({required this.code, required this.name, });

factory MessagesInnerFunctions.fromJson(Map<String, dynamic> json) { return MessagesInnerFunctions(
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
MessagesInnerFunctions copyWith({String? code, String? name, }) { return MessagesInnerFunctions(
  code: code ?? this.code,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessagesInnerFunctions &&
          code == other.code &&
          name == other.name; } 
@override int get hashCode { return Object.hash(code, name); } 
@override String toString() { return 'MessagesInnerFunctions(code: $code, name: $name)'; } 
 }
