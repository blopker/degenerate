// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsIdRequestActiveFromVariant1 {const PostTaxRegistrationsIdRequestActiveFromVariant1._(this.value);

factory PostTaxRegistrationsIdRequestActiveFromVariant1.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostTaxRegistrationsIdRequestActiveFromVariant1._(json),
};}

static const PostTaxRegistrationsIdRequestActiveFromVariant1 now = PostTaxRegistrationsIdRequestActiveFromVariant1._('now');

static const List<PostTaxRegistrationsIdRequestActiveFromVariant1> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTaxRegistrationsIdRequestActiveFromVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTaxRegistrationsIdRequestActiveFromVariant1($value)';}
}
/// Time at which the registration becomes active. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
@immutable
final class PostTaxRegistrationsIdRequestActiveFrom {
  const PostTaxRegistrationsIdRequestActiveFrom({this.postTaxRegistrationsIdRequestActiveFromVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxRegistrationsIdRequestActiveFrom._({required this.rawValue, required this.postTaxRegistrationsIdRequestActiveFromVariant1,
required this.$int,});
  factory PostTaxRegistrationsIdRequestActiveFrom.fromJson(Object? json) => PostTaxRegistrationsIdRequestActiveFrom._(
    rawValue: Omittable(json),
    postTaxRegistrationsIdRequestActiveFromVariant1: parseAnyOfVariant<PostTaxRegistrationsIdRequestActiveFromVariant1>(json, (value) => PostTaxRegistrationsIdRequestActiveFromVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostTaxRegistrationsIdRequestActiveFromVariant1> postTaxRegistrationsIdRequestActiveFromVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postTaxRegistrationsIdRequestActiveFromVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postTaxRegistrationsIdRequestActiveFromVariant1.isPresent) postTaxRegistrationsIdRequestActiveFromVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxRegistrationsIdRequestActiveFrom && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxRegistrationsIdRequestActiveFrom(${toJson()})';
}
