// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalLocationsLocationRequestDisplayNameVariant2 {const PostTerminalLocationsLocationRequestDisplayNameVariant2._(this.value);

factory PostTerminalLocationsLocationRequestDisplayNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsLocationRequestDisplayNameVariant2._(json),
}; }

static const PostTerminalLocationsLocationRequestDisplayNameVariant2 $empty = PostTerminalLocationsLocationRequestDisplayNameVariant2._('');

static const List<PostTerminalLocationsLocationRequestDisplayNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalLocationsLocationRequestDisplayNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalLocationsLocationRequestDisplayNameVariant2($value)'; } 
 }
/// A name for the location.
@immutable
final class PostTerminalLocationsLocationRequestDisplayName {
  const PostTerminalLocationsLocationRequestDisplayName({this.string = const Omittable.absent(),
this.postTerminalLocationsLocationRequestDisplayNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalLocationsLocationRequestDisplayName._({required this.rawValue, required this.string,
required this.postTerminalLocationsLocationRequestDisplayNameVariant2,});
  factory PostTerminalLocationsLocationRequestDisplayName.fromJson(Object? json) => PostTerminalLocationsLocationRequestDisplayName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalLocationsLocationRequestDisplayNameVariant2: parseAnyOfVariant<PostTerminalLocationsLocationRequestDisplayNameVariant2>(json, (value) => PostTerminalLocationsLocationRequestDisplayNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalLocationsLocationRequestDisplayNameVariant2> postTerminalLocationsLocationRequestDisplayNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalLocationsLocationRequestDisplayNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalLocationsLocationRequestDisplayNameVariant2.isPresent) postTerminalLocationsLocationRequestDisplayNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalLocationsLocationRequestDisplayName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalLocationsLocationRequestDisplayName(${toJson()})';
}
