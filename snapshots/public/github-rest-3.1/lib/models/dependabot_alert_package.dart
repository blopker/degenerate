// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Details for the vulnerable package.
@immutable final class DependabotAlertPackage {const DependabotAlertPackage({required this.ecosystem, required this.name, });

factory DependabotAlertPackage.fromJson(Map<String, dynamic> json) { return DependabotAlertPackage(
  ecosystem: json['ecosystem'] as String,
  name: json['name'] as String,
); }

/// The package's language or package management ecosystem.
final String ecosystem;

/// The unique package name within its ecosystem.
final String name;

Map<String, dynamic> toJson() { return {
  'ecosystem': ecosystem,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ecosystem') && json['ecosystem'] is String &&
      json.containsKey('name') && json['name'] is String; } 
DependabotAlertPackage copyWith({String? ecosystem, String? name, }) { return DependabotAlertPackage(
  ecosystem: ecosystem ?? this.ecosystem,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependabotAlertPackage &&
          ecosystem == other.ecosystem &&
          name == other.name; } 
@override int get hashCode { return Object.hash(ecosystem, name); } 
@override String toString() { return 'DependabotAlertPackage(ecosystem: $ecosystem, name: $name)'; } 
 }
