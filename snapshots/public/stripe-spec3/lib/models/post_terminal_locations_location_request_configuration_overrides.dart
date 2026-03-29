// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTerminalLocationsLocationRequestConfigurationOverridesVariant2 {const PostTerminalLocationsLocationRequestConfigurationOverridesVariant2._(this.value);

factory PostTerminalLocationsLocationRequestConfigurationOverridesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsLocationRequestConfigurationOverridesVariant2._(json),
}; }

static const PostTerminalLocationsLocationRequestConfigurationOverridesVariant2 $empty = PostTerminalLocationsLocationRequestConfigurationOverridesVariant2._('');

static const List<PostTerminalLocationsLocationRequestConfigurationOverridesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalLocationsLocationRequestConfigurationOverridesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalLocationsLocationRequestConfigurationOverridesVariant2($value)'; } 
 }
typedef PostTerminalLocationsLocationRequestConfigurationOverrides = OneOf2<String,PostTerminalLocationsLocationRequestConfigurationOverridesVariant2>;