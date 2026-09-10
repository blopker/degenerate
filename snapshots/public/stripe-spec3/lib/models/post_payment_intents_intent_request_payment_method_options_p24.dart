// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param62.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsP24 {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsP24({this.paymentMethodOptionsParam62 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsP24._({required this.rawValue, required this.paymentMethodOptionsParam62,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsP24.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsP24._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam62: parseAnyOfVariant<PaymentMethodOptionsParam62>(json, (value) => PaymentMethodOptionsParam62.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam62> paymentMethodOptionsParam62;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2> postPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam62.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam62.isPresent) paymentMethodOptionsParam62.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsP24 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsP24(${toJson()})';
}
