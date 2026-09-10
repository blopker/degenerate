// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param3.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2 {const PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2._(json),
};}

static const PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2 $empty = PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentCaptureRequestAmountDetailsTax {
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsTax({this.amountDetailsTaxParam3 = const Omittable.absent(),
this.postPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsTax._({required this.rawValue, required this.amountDetailsTaxParam3,
required this.postPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2,});
  factory PostPaymentIntentsIntentCaptureRequestAmountDetailsTax.fromJson(Object? json) => PostPaymentIntentsIntentCaptureRequestAmountDetailsTax._(
    rawValue: Omittable(json),
    amountDetailsTaxParam3: parseAnyOfVariant<AmountDetailsTaxParam3>(json, (value) => AmountDetailsTaxParam3.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2: parseAnyOfVariant<PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2>(json, (value) => PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsTaxParam3> amountDetailsTaxParam3;
final Omittable<PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2> postPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsTaxParam3.isPresent || postPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsTaxParam3.isPresent) amountDetailsTaxParam3.value?.toJson(),
if (postPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2.isPresent) postPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestAmountDetailsTax && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentCaptureRequestAmountDetailsTax(${toJson()})';
}
