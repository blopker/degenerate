// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param96.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco({this.paymentMethodOptionsParam96 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco._({required this.rawValue, required this.paymentMethodOptionsParam96,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam96: parseAnyOfVariant<PaymentMethodOptionsParam96>(json, (value) => PaymentMethodOptionsParam96.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam96> paymentMethodOptionsParam96;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam96.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam96.isPresent) paymentMethodOptionsParam96.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco(${toJson()})';
}
