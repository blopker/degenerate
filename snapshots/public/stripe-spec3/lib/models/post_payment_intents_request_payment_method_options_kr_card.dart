// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param19.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsKrCard {
  const PostPaymentIntentsRequestPaymentMethodOptionsKrCard({this.paymentMethodOptionsParam19 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsKrCard._({required this.rawValue, required this.paymentMethodOptionsParam19,
required this.postPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsKrCard.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsKrCard._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam19: parseAnyOfVariant<PaymentMethodOptionsParam19>(json, (value) => PaymentMethodOptionsParam19.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam19> paymentMethodOptionsParam19;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2> postPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam19.isPresent || postPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam19.isPresent) paymentMethodOptionsParam19.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsKrCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsKrCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsKrCard(${toJson()})';
}
