// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Color for the issue type.
@immutable final class OrganizationUpdateIssueTypeColor {const OrganizationUpdateIssueTypeColor._(this.value);

factory OrganizationUpdateIssueTypeColor.fromJson(String json) { return switch (json) {
  'gray' => gray,
  'blue' => blue,
  'green' => green,
  'yellow' => yellow,
  'orange' => orange,
  'red' => red,
  'pink' => pink,
  'purple' => purple,
  'null' => $null,
  _ => OrganizationUpdateIssueTypeColor._(json),
}; }

static const OrganizationUpdateIssueTypeColor gray = OrganizationUpdateIssueTypeColor._('gray');

static const OrganizationUpdateIssueTypeColor blue = OrganizationUpdateIssueTypeColor._('blue');

static const OrganizationUpdateIssueTypeColor green = OrganizationUpdateIssueTypeColor._('green');

static const OrganizationUpdateIssueTypeColor yellow = OrganizationUpdateIssueTypeColor._('yellow');

static const OrganizationUpdateIssueTypeColor orange = OrganizationUpdateIssueTypeColor._('orange');

static const OrganizationUpdateIssueTypeColor red = OrganizationUpdateIssueTypeColor._('red');

static const OrganizationUpdateIssueTypeColor pink = OrganizationUpdateIssueTypeColor._('pink');

static const OrganizationUpdateIssueTypeColor purple = OrganizationUpdateIssueTypeColor._('purple');

static const OrganizationUpdateIssueTypeColor $null = OrganizationUpdateIssueTypeColor._('null');

static const List<OrganizationUpdateIssueTypeColor> values = [gray, blue, green, yellow, orange, red, pink, purple, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationUpdateIssueTypeColor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationUpdateIssueTypeColor($value)'; } 
 }
@immutable final class OrganizationUpdateIssueType {const OrganizationUpdateIssueType({required this.name, required this.isEnabled, this.description = const Omittable.absent(), this.color = const Omittable.absent(), });

factory OrganizationUpdateIssueType.fromJson(Map<String, dynamic> json) { return OrganizationUpdateIssueType(
  name: json['name'] as String,
  isEnabled: json['is_enabled'] as bool,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  color: json.containsKey('color') ? Omittable(json['color'] != null ? OrganizationUpdateIssueTypeColor.fromJson(json['color'] as String) : null) : const Omittable.absent(),
); }

/// Name of the issue type.
final String name;

/// Whether or not the issue type is enabled at the organization level.
final bool isEnabled;

/// Description of the issue type.
final Omittable<String?> description;

/// Color for the issue type.
final Omittable<OrganizationUpdateIssueTypeColor?> color;

Map<String, dynamic> toJson() { return {
  'name': name,
  'is_enabled': isEnabled,
  if (description.isPresent) 'description': description.value,
  if (color.isPresent) 'color': color.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('is_enabled') && json['is_enabled'] is bool; } 
OrganizationUpdateIssueType copyWith({String? name, bool? isEnabled, Omittable<String?>? description, Omittable<OrganizationUpdateIssueTypeColor?>? color, }) { return OrganizationUpdateIssueType(
  name: name ?? this.name,
  isEnabled: isEnabled ?? this.isEnabled,
  description: description ?? this.description,
  color: color ?? this.color,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationUpdateIssueType &&
          name == other.name &&
          isEnabled == other.isEnabled &&
          description == other.description &&
          color == other.color; } 
@override int get hashCode { return Object.hash(name, isEnabled, description, color); } 
@override String toString() { return 'OrganizationUpdateIssueType(name: $name, isEnabled: $isEnabled, description: $description, color: $color)'; } 
 }
