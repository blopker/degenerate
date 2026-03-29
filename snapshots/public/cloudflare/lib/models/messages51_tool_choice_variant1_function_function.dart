// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages51ToolChoiceVariant1FunctionFunction {const Messages51ToolChoiceVariant1FunctionFunction({required this.name});

factory Messages51ToolChoiceVariant1FunctionFunction.fromJson(Map<String, dynamic> json) { return Messages51ToolChoiceVariant1FunctionFunction(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Messages51ToolChoiceVariant1FunctionFunction copyWith({String? name}) { return Messages51ToolChoiceVariant1FunctionFunction(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ToolChoiceVariant1FunctionFunction &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'Messages51ToolChoiceVariant1FunctionFunction(name: $name)'; } 
 }
