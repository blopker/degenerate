// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param65.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypal {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypal({this.paymentMethodOptionsParam65 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypal._({required this.rawValue, required this.paymentMethodOptionsParam65,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypal.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypal._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam65: parseAnyOfVariant<PaymentMethodOptionsParam65>(json, (value) => PaymentMethodOptionsParam65.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam65> paymentMethodOptionsParam65;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam65.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam65.isPresent) paymentMethodOptionsParam65.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsPaypalVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaypal(${toJson()})';
}
