// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_param3.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCard {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCard({this.paymentIntentParam3 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCard._({required this.rawValue, required this.paymentIntentParam3,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCard.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    paymentIntentParam3: parseAnyOfVariant<PaymentIntentParam3>(json, (value) => PaymentIntentParam3.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentParam3> paymentIntentParam3;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentParam3.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentParam3.isPresent) paymentIntentParam3.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCard(${toJson()})';
}
