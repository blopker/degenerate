// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages33Functions {const Messages33Functions({required this.code, required this.name, });

factory Messages33Functions.fromJson(Map<String, dynamic> json) { return Messages33Functions(
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
Messages33Functions copyWith({String? code, String? name, }) { return Messages33Functions(
  code: code ?? this.code,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages33Functions &&
          code == other.code &&
          name == other.name; } 
@override int get hashCode { return Object.hash(code, name); } 
@override String toString() { return 'Messages33Functions(code: $code, name: $name)'; } 
 }
