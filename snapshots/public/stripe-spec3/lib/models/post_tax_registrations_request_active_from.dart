// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsRequestActiveFromVariant1 {const PostTaxRegistrationsRequestActiveFromVariant1._(this.value);

factory PostTaxRegistrationsRequestActiveFromVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostTaxRegistrationsRequestActiveFromVariant1._(json),
}; }

static const PostTaxRegistrationsRequestActiveFromVariant1 now = PostTaxRegistrationsRequestActiveFromVariant1._('now');

static const List<PostTaxRegistrationsRequestActiveFromVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestActiveFromVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestActiveFromVariant1($value)'; } 
 }
/// Time at which the Tax Registration becomes active. It can be either `now` to indicate the current time, or a future timestamp measured in seconds since the Unix epoch.
@immutable
final class PostTaxRegistrationsRequestActiveFrom {
  const PostTaxRegistrationsRequestActiveFrom({this.postTaxRegistrationsRequestActiveFromVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxRegistrationsRequestActiveFrom._({required this.rawValue, required this.postTaxRegistrationsRequestActiveFromVariant1,
required this.$int,});
  factory PostTaxRegistrationsRequestActiveFrom.fromJson(Object? json) => PostTaxRegistrationsRequestActiveFrom._(
    rawValue: Omittable(json),
    postTaxRegistrationsRequestActiveFromVariant1: parseAnyOfVariant<PostTaxRegistrationsRequestActiveFromVariant1>(json, (value) => PostTaxRegistrationsRequestActiveFromVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostTaxRegistrationsRequestActiveFromVariant1> postTaxRegistrationsRequestActiveFromVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postTaxRegistrationsRequestActiveFromVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postTaxRegistrationsRequestActiveFromVariant1.isPresent) postTaxRegistrationsRequestActiveFromVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxRegistrationsRequestActiveFrom && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxRegistrationsRequestActiveFrom(${toJson()})';
}
