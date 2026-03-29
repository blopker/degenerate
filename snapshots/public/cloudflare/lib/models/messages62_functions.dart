// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages62Functions {const Messages62Functions({required this.code, required this.name, });

factory Messages62Functions.fromJson(Map<String, dynamic> json) { return Messages62Functions(
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
Messages62Functions copyWith({String? code, String? name, }) { return Messages62Functions(
  code: code ?? this.code,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages62Functions &&
          code == other.code &&
          name == other.name; } 
@override int get hashCode { return Object.hash(code, name); } 
@override String toString() { return 'Messages62Functions(code: $code, name: $name)'; } 
 }
