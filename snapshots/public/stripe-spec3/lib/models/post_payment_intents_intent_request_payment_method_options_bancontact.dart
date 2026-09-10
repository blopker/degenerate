// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param43.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact({this.paymentMethodOptionsParam43 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact._({required this.rawValue, required this.paymentMethodOptionsParam43,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam43: parseAnyOfVariant<PaymentMethodOptionsParam43>(json, (value) => PaymentMethodOptionsParam43.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam43> paymentMethodOptionsParam43;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam43.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam43.isPresent) paymentMethodOptionsParam43.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact(${toJson()})';
}
