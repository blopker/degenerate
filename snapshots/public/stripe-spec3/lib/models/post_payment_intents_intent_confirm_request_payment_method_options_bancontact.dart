// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param80.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact({this.paymentMethodOptionsParam80 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact._({required this.rawValue, required this.paymentMethodOptionsParam80,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam80: parseAnyOfVariant<PaymentMethodOptionsParam80>(json, (value) => PaymentMethodOptionsParam80.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam80> paymentMethodOptionsParam80;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam80.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam80.isPresent) paymentMethodOptionsParam80.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact(${toJson()})';
}
