// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesAddLabelsRequestVariant3 {const IssuesAddLabelsRequestVariant3({required this.name});

factory IssuesAddLabelsRequestVariant3.fromJson(Map<String, dynamic> json) { return IssuesAddLabelsRequestVariant3(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
IssuesAddLabelsRequestVariant3 copyWith({String? name}) { return IssuesAddLabelsRequestVariant3(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesAddLabelsRequestVariant3 &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'IssuesAddLabelsRequestVariant3(name: $name)'; } 
 }
