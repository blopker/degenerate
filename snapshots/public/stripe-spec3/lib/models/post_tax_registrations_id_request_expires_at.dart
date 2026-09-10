// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsIdRequestExpiresAtVariant1 {const PostTaxRegistrationsIdRequestExpiresAtVariant1._(this.value);

factory PostTaxRegistrationsIdRequestExpiresAtVariant1.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostTaxRegistrationsIdRequestExpiresAtVariant1._(json),
};}

static const PostTaxRegistrationsIdRequestExpiresAtVariant1 now = PostTaxRegistrationsIdRequestExpiresAtVariant1._('now');

static const List<PostTaxRegistrationsIdRequestExpiresAtVariant1> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTaxRegistrationsIdRequestExpiresAtVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTaxRegistrationsIdRequestExpiresAtVariant1($value)';}
}
@immutable final class PostTaxRegistrationsIdRequestExpiresAtVariant3 {const PostTaxRegistrationsIdRequestExpiresAtVariant3._(this.value);

factory PostTaxRegistrationsIdRequestExpiresAtVariant3.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTaxRegistrationsIdRequestExpiresAtVariant3._(json),
};}

static const PostTaxRegistrationsIdRequestExpiresAtVariant3 $empty = PostTaxRegistrationsIdRequestExpiresAtVariant3._('');

static const List<PostTaxRegistrationsIdRequestExpiresAtVariant3> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTaxRegistrationsIdRequestExpiresAtVariant3 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTaxRegistrationsIdRequestExpiresAtVariant3($value)';}
}
/// If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
@immutable
final class PostTaxRegistrationsIdRequestExpiresAt {
  const PostTaxRegistrationsIdRequestExpiresAt({this.postTaxRegistrationsIdRequestExpiresAtVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),
this.postTaxRegistrationsIdRequestExpiresAtVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxRegistrationsIdRequestExpiresAt._({required this.rawValue, required this.postTaxRegistrationsIdRequestExpiresAtVariant1,
required this.$int,
required this.postTaxRegistrationsIdRequestExpiresAtVariant3,});
  factory PostTaxRegistrationsIdRequestExpiresAt.fromJson(Object? json) => PostTaxRegistrationsIdRequestExpiresAt._(
    rawValue: Omittable(json),
    postTaxRegistrationsIdRequestExpiresAtVariant1: parseAnyOfVariant<PostTaxRegistrationsIdRequestExpiresAtVariant1>(json, (value) => PostTaxRegistrationsIdRequestExpiresAtVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postTaxRegistrationsIdRequestExpiresAtVariant3: parseAnyOfVariant<PostTaxRegistrationsIdRequestExpiresAtVariant3>(json, (value) => PostTaxRegistrationsIdRequestExpiresAtVariant3.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostTaxRegistrationsIdRequestExpiresAtVariant1> postTaxRegistrationsIdRequestExpiresAtVariant1;
final Omittable<int> $int;
final Omittable<PostTaxRegistrationsIdRequestExpiresAtVariant3> postTaxRegistrationsIdRequestExpiresAtVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => postTaxRegistrationsIdRequestExpiresAtVariant1.isPresent || $int.isPresent || postTaxRegistrationsIdRequestExpiresAtVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postTaxRegistrationsIdRequestExpiresAtVariant1.isPresent) postTaxRegistrationsIdRequestExpiresAtVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
if (postTaxRegistrationsIdRequestExpiresAtVariant3.isPresent) postTaxRegistrationsIdRequestExpiresAtVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxRegistrationsIdRequestExpiresAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxRegistrationsIdRequestExpiresAt(${toJson()})';
}
