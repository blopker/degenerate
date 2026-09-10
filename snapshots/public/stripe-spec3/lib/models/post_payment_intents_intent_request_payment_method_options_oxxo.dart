// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param61.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxo {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxo({this.paymentMethodOptionsParam61 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxo._({required this.rawValue, required this.paymentMethodOptionsParam61,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxo.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxo._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam61: parseAnyOfVariant<PaymentMethodOptionsParam61>(json, (value) => PaymentMethodOptionsParam61.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam61> paymentMethodOptionsParam61;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam61.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam61.isPresent) paymentMethodOptionsParam61.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsOxxoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsOxxo(${toJson()})';
}
