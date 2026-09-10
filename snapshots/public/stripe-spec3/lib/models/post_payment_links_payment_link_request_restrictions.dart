// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'restrictions_params.dart';@immutable final class PostPaymentLinksPaymentLinkRequestRestrictionsVariant2 {const PostPaymentLinksPaymentLinkRequestRestrictionsVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestRestrictionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestRestrictionsVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestRestrictionsVariant2 $empty = PostPaymentLinksPaymentLinkRequestRestrictionsVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestRestrictionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestRestrictionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestRestrictionsVariant2($value)';}
}
/// Settings that restrict the usage of a payment link.
@immutable
final class PostPaymentLinksPaymentLinkRequestRestrictions {
  const PostPaymentLinksPaymentLinkRequestRestrictions({this.restrictionsParams = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestRestrictionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestRestrictions._({required this.rawValue, required this.restrictionsParams,
required this.postPaymentLinksPaymentLinkRequestRestrictionsVariant2,});
  factory PostPaymentLinksPaymentLinkRequestRestrictions.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestRestrictions._(
    rawValue: Omittable(json),
    restrictionsParams: parseAnyOfVariant<RestrictionsParams>(json, (value) => RestrictionsParams.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestRestrictionsVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestRestrictionsVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestRestrictionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RestrictionsParams> restrictionsParams;
final Omittable<PostPaymentLinksPaymentLinkRequestRestrictionsVariant2> postPaymentLinksPaymentLinkRequestRestrictionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => restrictionsParams.isPresent || postPaymentLinksPaymentLinkRequestRestrictionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (restrictionsParams.isPresent) restrictionsParams.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestRestrictionsVariant2.isPresent) postPaymentLinksPaymentLinkRequestRestrictionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestRestrictions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestRestrictions(${toJson()})';
}
