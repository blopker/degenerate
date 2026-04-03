// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalLocationsLocationRequestDisplayNameKanaVariant2 {const PostTerminalLocationsLocationRequestDisplayNameKanaVariant2._(this.value);

factory PostTerminalLocationsLocationRequestDisplayNameKanaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsLocationRequestDisplayNameKanaVariant2._(json),
}; }

static const PostTerminalLocationsLocationRequestDisplayNameKanaVariant2 $empty = PostTerminalLocationsLocationRequestDisplayNameKanaVariant2._('');

static const List<PostTerminalLocationsLocationRequestDisplayNameKanaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalLocationsLocationRequestDisplayNameKanaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalLocationsLocationRequestDisplayNameKanaVariant2($value)'; } 
 }
typedef PostTerminalLocationsLocationRequestDisplayNameKana = OneOf2<String,PostTerminalLocationsLocationRequestDisplayNameKanaVariant2>;
