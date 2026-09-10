// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param18.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsKonbini {
  const PostPaymentIntentsRequestPaymentMethodOptionsKonbini({this.paymentMethodOptionsParam18 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsKonbini._({required this.rawValue, required this.paymentMethodOptionsParam18,
required this.postPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsKonbini.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam18: parseAnyOfVariant<PaymentMethodOptionsParam18>(json, (value) => PaymentMethodOptionsParam18.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam18> paymentMethodOptionsParam18;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2> postPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam18.isPresent || postPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam18.isPresent) paymentMethodOptionsParam18.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsKonbini(${toJson()})';
}
