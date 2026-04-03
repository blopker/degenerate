// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesSetLabelsRequestVariant3Labels {const IssuesSetLabelsRequestVariant3Labels({required this.name});

factory IssuesSetLabelsRequestVariant3Labels.fromJson(Map<String, dynamic> json) { return IssuesSetLabelsRequestVariant3Labels(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
IssuesSetLabelsRequestVariant3Labels copyWith({String? name}) { return IssuesSetLabelsRequestVariant3Labels(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesSetLabelsRequestVariant3Labels &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'IssuesSetLabelsRequestVariant3Labels(name: $name)'; } 
 }
