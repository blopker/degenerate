// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param85.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpx {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpx({this.paymentMethodOptionsParam85 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpx._({required this.rawValue, required this.paymentMethodOptionsParam85,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpx.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpx._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam85: parseAnyOfVariant<PaymentMethodOptionsParam85>(json, (value) => PaymentMethodOptionsParam85.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam85> paymentMethodOptionsParam85;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam85.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam85.isPresent) paymentMethodOptionsParam85.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpx && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsFpx(${toJson()})';
}
