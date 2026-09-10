// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_param.dart';@immutable final class PostPaymentIntentsIntentRequestAmountDetailsVariant2 {const PostPaymentIntentsIntentRequestAmountDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentRequestAmountDetailsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestAmountDetailsVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestAmountDetailsVariant2 $empty = PostPaymentIntentsIntentRequestAmountDetailsVariant2._('');

static const List<PostPaymentIntentsIntentRequestAmountDetailsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestAmountDetailsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestAmountDetailsVariant2($value)'; } 
 }
/// Provides industry-specific information about the amount.
@immutable
final class PostPaymentIntentsIntentRequestAmountDetails {
  const PostPaymentIntentsIntentRequestAmountDetails({this.amountDetailsParam = const Omittable.absent(),
this.postPaymentIntentsIntentRequestAmountDetailsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestAmountDetails._({required this.rawValue, required this.amountDetailsParam,
required this.postPaymentIntentsIntentRequestAmountDetailsVariant2,});
  factory PostPaymentIntentsIntentRequestAmountDetails.fromJson(Object? json) => PostPaymentIntentsIntentRequestAmountDetails._(
    rawValue: Omittable(json),
    amountDetailsParam: parseAnyOfVariant<AmountDetailsParam>(json, (value) => AmountDetailsParam.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestAmountDetailsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestAmountDetailsVariant2>(json, (value) => PostPaymentIntentsIntentRequestAmountDetailsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsParam> amountDetailsParam;
final Omittable<PostPaymentIntentsIntentRequestAmountDetailsVariant2> postPaymentIntentsIntentRequestAmountDetailsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsParam.isPresent || postPaymentIntentsIntentRequestAmountDetailsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsParam.isPresent) amountDetailsParam.value?.toJson(),
if (postPaymentIntentsIntentRequestAmountDetailsVariant2.isPresent) postPaymentIntentsIntentRequestAmountDetailsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestAmountDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestAmountDetails(${toJson()})';
}
