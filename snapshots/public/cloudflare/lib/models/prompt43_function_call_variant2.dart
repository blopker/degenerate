// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt43FunctionCallVariant2 {const Prompt43FunctionCallVariant2({required this.name});

factory Prompt43FunctionCallVariant2.fromJson(Map<String, dynamic> json) { return Prompt43FunctionCallVariant2(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Prompt43FunctionCallVariant2 copyWith({String? name}) { return Prompt43FunctionCallVariant2(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43FunctionCallVariant2 &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'Prompt43FunctionCallVariant2(name: $name)'; } 
 }
