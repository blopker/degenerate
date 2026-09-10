// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param6.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsBancontact {
  const PostPaymentIntentsRequestPaymentMethodOptionsBancontact({this.paymentMethodOptionsParam6 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsBancontact._({required this.rawValue, required this.paymentMethodOptionsParam6,
required this.postPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsBancontact.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsBancontact._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam6: parseAnyOfVariant<PaymentMethodOptionsParam6>(json, (value) => PaymentMethodOptionsParam6.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam6> paymentMethodOptionsParam6;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2> postPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam6.isPresent || postPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam6.isPresent) paymentMethodOptionsParam6.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsBancontact && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsBancontact(${toJson()})';
}
