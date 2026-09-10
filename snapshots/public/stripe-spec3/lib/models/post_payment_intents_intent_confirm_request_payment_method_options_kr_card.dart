// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param93.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard({this.paymentMethodOptionsParam93 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard._({required this.rawValue, required this.paymentMethodOptionsParam93,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam93: parseAnyOfVariant<PaymentMethodOptionsParam93>(json, (value) => PaymentMethodOptionsParam93.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam93> paymentMethodOptionsParam93;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam93.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam93.isPresent) paymentMethodOptionsParam93.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard(${toJson()})';
}
