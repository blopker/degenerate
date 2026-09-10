// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param107.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispay({this.paymentMethodOptionsParam107 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispay._({required this.rawValue, required this.paymentMethodOptionsParam107,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam107: parseAnyOfVariant<PaymentMethodOptionsParam107>(json, (value) => PaymentMethodOptionsParam107.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam107> paymentMethodOptionsParam107;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam107.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam107.isPresent) paymentMethodOptionsParam107.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSatispay(${toJson()})';
}
