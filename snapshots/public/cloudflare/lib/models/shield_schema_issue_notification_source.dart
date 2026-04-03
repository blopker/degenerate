// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ShieldSchemaIssueNotificationSource {const ShieldSchemaIssueNotificationSource({this.locations});

factory ShieldSchemaIssueNotificationSource.fromJson(Map<String, dynamic> json) { return ShieldSchemaIssueNotificationSource(
  locations: (json['locations'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A list of JSON path expression(s) that describe the location(s) of the issue within the provided resource. See [https://goessner.net/articles/JsonPath/](https://goessner.net/articles/JsonPath/) for JSONPath specification.
final List<String>? locations;

Map<String, dynamic> toJson() { return {
  'locations': ?locations,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'locations'}.contains(key)); } 
ShieldSchemaIssueNotificationSource copyWith({List<String> Function()? locations}) { return ShieldSchemaIssueNotificationSource(
  locations: locations != null ? locations() : this.locations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaIssueNotificationSource &&
          listEquals(locations, other.locations); } 
@override int get hashCode { return Object.hashAll(locations ?? const []).hashCode; } 
@override String toString() { return 'ShieldSchemaIssueNotificationSource(locations: $locations)'; } 
 }
