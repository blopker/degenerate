// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param91.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarna {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarna({this.paymentMethodOptionsParam91 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarna._({required this.rawValue, required this.paymentMethodOptionsParam91,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarna.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarna._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam91: parseAnyOfVariant<PaymentMethodOptionsParam91>(json, (value) => PaymentMethodOptionsParam91.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam91> paymentMethodOptionsParam91;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam91.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam91.isPresent) paymentMethodOptionsParam91.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarna && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKlarna(${toJson()})';
}
