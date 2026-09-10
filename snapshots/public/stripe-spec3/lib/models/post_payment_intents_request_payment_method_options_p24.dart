// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param25.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2 {const PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsP24 {
  const PostPaymentIntentsRequestPaymentMethodOptionsP24({this.paymentMethodOptionsParam25 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsP24Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsP24._({required this.rawValue, required this.paymentMethodOptionsParam25,
required this.postPaymentIntentsRequestPaymentMethodOptionsP24Variant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsP24.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsP24._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam25: parseAnyOfVariant<PaymentMethodOptionsParam25>(json, (value) => PaymentMethodOptionsParam25.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsP24Variant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam25> paymentMethodOptionsParam25;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsP24Variant2> postPaymentIntentsRequestPaymentMethodOptionsP24Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam25.isPresent || postPaymentIntentsRequestPaymentMethodOptionsP24Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam25.isPresent) paymentMethodOptionsParam25.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsP24Variant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsP24Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsP24 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsP24(${toJson()})';
}
