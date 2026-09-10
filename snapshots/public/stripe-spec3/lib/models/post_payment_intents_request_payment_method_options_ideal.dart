// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param14.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsIdeal {
  const PostPaymentIntentsRequestPaymentMethodOptionsIdeal({this.paymentMethodOptionsParam14 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsIdealVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsIdeal._({required this.rawValue, required this.paymentMethodOptionsParam14,
required this.postPaymentIntentsRequestPaymentMethodOptionsIdealVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsIdeal.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsIdeal._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam14: parseAnyOfVariant<PaymentMethodOptionsParam14>(json, (value) => PaymentMethodOptionsParam14.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsIdealVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam14> paymentMethodOptionsParam14;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsIdealVariant2> postPaymentIntentsRequestPaymentMethodOptionsIdealVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam14.isPresent || postPaymentIntentsRequestPaymentMethodOptionsIdealVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam14.isPresent) paymentMethodOptionsParam14.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsIdealVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsIdealVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsIdeal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsIdeal(${toJson()})';
}
