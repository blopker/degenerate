// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param70.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispay({this.paymentMethodOptionsParam70 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispay._({required this.rawValue, required this.paymentMethodOptionsParam70,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam70: parseAnyOfVariant<PaymentMethodOptionsParam70>(json, (value) => PaymentMethodOptionsParam70.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam70> paymentMethodOptionsParam70;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam70.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam70.isPresent) paymentMethodOptionsParam70.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsSatispayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSatispay(${toJson()})';
}
