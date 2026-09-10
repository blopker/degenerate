// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestGroupsPaymentsPricingVariant2 {const PostAccountsAccountRequestGroupsPaymentsPricingVariant2._(this.value);

factory PostAccountsAccountRequestGroupsPaymentsPricingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestGroupsPaymentsPricingVariant2._(json),
}; }

static const PostAccountsAccountRequestGroupsPaymentsPricingVariant2 $empty = PostAccountsAccountRequestGroupsPaymentsPricingVariant2._('');

static const List<PostAccountsAccountRequestGroupsPaymentsPricingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestGroupsPaymentsPricingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestGroupsPaymentsPricingVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountRequestGroupsPaymentsPricing {
  const PostAccountsAccountRequestGroupsPaymentsPricing({this.string = const Omittable.absent(),
this.postAccountsAccountRequestGroupsPaymentsPricingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestGroupsPaymentsPricing._({required this.rawValue, required this.string,
required this.postAccountsAccountRequestGroupsPaymentsPricingVariant2,});
  factory PostAccountsAccountRequestGroupsPaymentsPricing.fromJson(Object? json) => PostAccountsAccountRequestGroupsPaymentsPricing._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountRequestGroupsPaymentsPricingVariant2: parseAnyOfVariant<PostAccountsAccountRequestGroupsPaymentsPricingVariant2>(json, (value) => PostAccountsAccountRequestGroupsPaymentsPricingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountRequestGroupsPaymentsPricingVariant2> postAccountsAccountRequestGroupsPaymentsPricingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountRequestGroupsPaymentsPricingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountRequestGroupsPaymentsPricingVariant2.isPresent) postAccountsAccountRequestGroupsPaymentsPricingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestGroupsPaymentsPricing && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestGroupsPaymentsPricing(${toJson()})';
}
