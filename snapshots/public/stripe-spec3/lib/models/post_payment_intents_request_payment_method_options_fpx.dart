// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param11.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsFpx {
  const PostPaymentIntentsRequestPaymentMethodOptionsFpx({this.paymentMethodOptionsParam11 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsFpxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsFpx._({required this.rawValue, required this.paymentMethodOptionsParam11,
required this.postPaymentIntentsRequestPaymentMethodOptionsFpxVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsFpx.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsFpx._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam11: parseAnyOfVariant<PaymentMethodOptionsParam11>(json, (value) => PaymentMethodOptionsParam11.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsFpxVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam11> paymentMethodOptionsParam11;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsFpxVariant2> postPaymentIntentsRequestPaymentMethodOptionsFpxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam11.isPresent || postPaymentIntentsRequestPaymentMethodOptionsFpxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam11.isPresent) paymentMethodOptionsParam11.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsFpxVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsFpxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsFpx && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsFpx(${toJson()})';
}
