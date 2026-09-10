// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param63.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco({this.paymentMethodOptionsParam63 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco._({required this.rawValue, required this.paymentMethodOptionsParam63,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam63: parseAnyOfVariant<PaymentMethodOptionsParam63>(json, (value) => PaymentMethodOptionsParam63.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam63> paymentMethodOptionsParam63;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam63.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam63.isPresent) paymentMethodOptionsParam63.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco(${toJson()})';
}
