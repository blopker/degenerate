// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'employee.dart';@immutable final class Department {const Department({required this.id, required this.name, this.head, this.members, });

factory Department.fromJson(Map<String, dynamic> json) { return Department(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  head: json['head'] != null ? Employee.fromJson(json['head'] as Map<String, dynamic>) : null,
  members: (json['members'] as List<dynamic>?)?.map((e) => Employee.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int id;

final String name;

final Employee? head;

final List<Employee>? members;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  if (head != null) 'head': head?.toJson(),
  if (members != null) 'members': members?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String; } 
Department copyWith({int? id, String? name, Employee Function()? head, List<Employee> Function()? members, }) { return Department(
  id: id ?? this.id,
  name: name ?? this.name,
  head: head != null ? head() : this.head,
  members: members != null ? members() : this.members,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Department &&
          id == other.id &&
          name == other.name &&
          head == other.head &&
          listEquals(members, other.members); } 
@override int get hashCode { return Object.hash(id, name, head, Object.hashAll(members ?? const [])); } 
@override String toString() { return 'Department(id: $id, name: $name, head: $head, members: $members)'; } 
 }
