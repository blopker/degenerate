// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param.dart';@immutable final class PostPaymentIntentsRequestAmountDetailsTaxVariant2 {const PostPaymentIntentsRequestAmountDetailsTaxVariant2._(this.value);

factory PostPaymentIntentsRequestAmountDetailsTaxVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestAmountDetailsTaxVariant2._(json),
}; }

static const PostPaymentIntentsRequestAmountDetailsTaxVariant2 $empty = PostPaymentIntentsRequestAmountDetailsTaxVariant2._('');

static const List<PostPaymentIntentsRequestAmountDetailsTaxVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestAmountDetailsTaxVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsTaxVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestAmountDetailsTax {
  const PostPaymentIntentsRequestAmountDetailsTax({this.amountDetailsTaxParam = const Omittable.absent(),
this.postPaymentIntentsRequestAmountDetailsTaxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestAmountDetailsTax._({required this.rawValue, required this.amountDetailsTaxParam,
required this.postPaymentIntentsRequestAmountDetailsTaxVariant2,});
  factory PostPaymentIntentsRequestAmountDetailsTax.fromJson(Object? json) => PostPaymentIntentsRequestAmountDetailsTax._(
    rawValue: Omittable(json),
    amountDetailsTaxParam: parseAnyOfVariant<AmountDetailsTaxParam>(json, (value) => AmountDetailsTaxParam.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestAmountDetailsTaxVariant2: parseAnyOfVariant<PostPaymentIntentsRequestAmountDetailsTaxVariant2>(json, (value) => PostPaymentIntentsRequestAmountDetailsTaxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsTaxParam> amountDetailsTaxParam;
final Omittable<PostPaymentIntentsRequestAmountDetailsTaxVariant2> postPaymentIntentsRequestAmountDetailsTaxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsTaxParam.isPresent || postPaymentIntentsRequestAmountDetailsTaxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsTaxParam.isPresent) amountDetailsTaxParam.value?.toJson(),
if (postPaymentIntentsRequestAmountDetailsTaxVariant2.isPresent) postPaymentIntentsRequestAmountDetailsTaxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsTax && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestAmountDetailsTax(${toJson()})';
}
