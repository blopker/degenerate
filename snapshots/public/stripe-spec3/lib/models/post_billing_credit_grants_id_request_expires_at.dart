// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingCreditGrantsIdRequestExpiresAtVariant2 {const PostBillingCreditGrantsIdRequestExpiresAtVariant2._(this.value);

factory PostBillingCreditGrantsIdRequestExpiresAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingCreditGrantsIdRequestExpiresAtVariant2._(json),
};}

static const PostBillingCreditGrantsIdRequestExpiresAtVariant2 $empty = PostBillingCreditGrantsIdRequestExpiresAtVariant2._('');

static const List<PostBillingCreditGrantsIdRequestExpiresAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingCreditGrantsIdRequestExpiresAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingCreditGrantsIdRequestExpiresAtVariant2($value)';}
}
/// The time when the billing credits created by this credit grant expire. If set to empty, the billing credits never expire.
@immutable
final class PostBillingCreditGrantsIdRequestExpiresAt {
  const PostBillingCreditGrantsIdRequestExpiresAt({this.$int = const Omittable.absent(),
this.postBillingCreditGrantsIdRequestExpiresAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingCreditGrantsIdRequestExpiresAt._({required this.rawValue, required this.$int,
required this.postBillingCreditGrantsIdRequestExpiresAtVariant2,});
  factory PostBillingCreditGrantsIdRequestExpiresAt.fromJson(Object? json) => PostBillingCreditGrantsIdRequestExpiresAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postBillingCreditGrantsIdRequestExpiresAtVariant2: parseAnyOfVariant<PostBillingCreditGrantsIdRequestExpiresAtVariant2>(json, (value) => PostBillingCreditGrantsIdRequestExpiresAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostBillingCreditGrantsIdRequestExpiresAtVariant2> postBillingCreditGrantsIdRequestExpiresAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postBillingCreditGrantsIdRequestExpiresAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postBillingCreditGrantsIdRequestExpiresAtVariant2.isPresent) postBillingCreditGrantsIdRequestExpiresAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingCreditGrantsIdRequestExpiresAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingCreditGrantsIdRequestExpiresAt(${toJson()})';
}
