// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalLocationsLocationRequestConfigurationOverridesVariant2 {const PostTerminalLocationsLocationRequestConfigurationOverridesVariant2._(this.value);

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
/// The ID of a configuration that will be used to customize all readers in this location.
@immutable
final class PostTerminalLocationsLocationRequestConfigurationOverrides {
  const PostTerminalLocationsLocationRequestConfigurationOverrides({this.string = const Omittable.absent(),
this.postTerminalLocationsLocationRequestConfigurationOverridesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalLocationsLocationRequestConfigurationOverrides._({required this.rawValue, required this.string,
required this.postTerminalLocationsLocationRequestConfigurationOverridesVariant2,});
  factory PostTerminalLocationsLocationRequestConfigurationOverrides.fromJson(Object? json) => PostTerminalLocationsLocationRequestConfigurationOverrides._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalLocationsLocationRequestConfigurationOverridesVariant2: parseAnyOfVariant<PostTerminalLocationsLocationRequestConfigurationOverridesVariant2>(json, (value) => PostTerminalLocationsLocationRequestConfigurationOverridesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalLocationsLocationRequestConfigurationOverridesVariant2> postTerminalLocationsLocationRequestConfigurationOverridesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalLocationsLocationRequestConfigurationOverridesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalLocationsLocationRequestConfigurationOverridesVariant2.isPresent) postTerminalLocationsLocationRequestConfigurationOverridesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalLocationsLocationRequestConfigurationOverrides && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalLocationsLocationRequestConfigurationOverrides(${toJson()})';
}
