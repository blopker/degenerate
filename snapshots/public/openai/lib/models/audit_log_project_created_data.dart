// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The payload used to create the project.
@immutable final class AuditLogProjectCreatedData {const AuditLogProjectCreatedData({this.name, this.title, });

factory AuditLogProjectCreatedData.fromJson(Map<String, dynamic> json) { return AuditLogProjectCreatedData(
  name: json['name'] as String?,
  title: json['title'] as String?,
); }

/// The project name.
final String? name;

/// The title of the project as seen on the dashboard.
final String? title;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'title'}.contains(key)); } 
AuditLogProjectCreatedData copyWith({String Function()? name, String Function()? title, }) { return AuditLogProjectCreatedData(
  name: name != null ? name() : this.name,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogProjectCreatedData &&
          name == other.name &&
          title == other.title; } 
@override int get hashCode { return Object.hash(name, title); } 
@override String toString() { return 'AuditLogProjectCreatedData(name: $name, title: $title)'; } 
 }
