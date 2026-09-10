// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param48.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx({this.paymentMethodOptionsParam48 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx._({required this.rawValue, required this.paymentMethodOptionsParam48,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam48: parseAnyOfVariant<PaymentMethodOptionsParam48>(json, (value) => PaymentMethodOptionsParam48.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam48> paymentMethodOptionsParam48;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam48.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam48.isPresent) paymentMethodOptionsParam48.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx(${toJson()})';
}
