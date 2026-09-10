// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param29.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsPix {
  const PostPaymentIntentsRequestPaymentMethodOptionsPix({this.paymentMethodOptionsParam29 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsPixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsPix._({required this.rawValue, required this.paymentMethodOptionsParam29,
required this.postPaymentIntentsRequestPaymentMethodOptionsPixVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsPix.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsPix._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam29: parseAnyOfVariant<PaymentMethodOptionsParam29>(json, (value) => PaymentMethodOptionsParam29.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsPixVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam29> paymentMethodOptionsParam29;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsPixVariant2> postPaymentIntentsRequestPaymentMethodOptionsPixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam29.isPresent || postPaymentIntentsRequestPaymentMethodOptionsPixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam29.isPresent) paymentMethodOptionsParam29.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsPixVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsPixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsPix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsPix(${toJson()})';
}
