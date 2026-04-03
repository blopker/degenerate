// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesSetLabelsRequestVariant4 {const IssuesSetLabelsRequestVariant4({required this.name});

factory IssuesSetLabelsRequestVariant4.fromJson(Map<String, dynamic> json) { return IssuesSetLabelsRequestVariant4(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
IssuesSetLabelsRequestVariant4 copyWith({String? name}) { return IssuesSetLabelsRequestVariant4(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesSetLabelsRequestVariant4 &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'IssuesSetLabelsRequestVariant4(name: $name)'; } 
 }
