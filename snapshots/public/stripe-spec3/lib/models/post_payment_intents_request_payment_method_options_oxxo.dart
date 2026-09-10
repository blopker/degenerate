// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param24.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsOxxo {
  const PostPaymentIntentsRequestPaymentMethodOptionsOxxo({this.paymentMethodOptionsParam24 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsOxxo._({required this.rawValue, required this.paymentMethodOptionsParam24,
required this.postPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsOxxo.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsOxxo._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam24: parseAnyOfVariant<PaymentMethodOptionsParam24>(json, (value) => PaymentMethodOptionsParam24.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam24> paymentMethodOptionsParam24;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2> postPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam24.isPresent || postPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam24.isPresent) paymentMethodOptionsParam24.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsOxxoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsOxxo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsOxxo(${toJson()})';
}
