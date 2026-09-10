// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param4.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsAlma {
  const PostPaymentIntentsRequestPaymentMethodOptionsAlma({this.paymentMethodOptionsParam4 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsAlma._({required this.rawValue, required this.paymentMethodOptionsParam4,
required this.postPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsAlma.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsAlma._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam4: parseAnyOfVariant<PaymentMethodOptionsParam4>(json, (value) => PaymentMethodOptionsParam4.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam4> paymentMethodOptionsParam4;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2> postPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam4.isPresent || postPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam4.isPresent) paymentMethodOptionsParam4.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsAlmaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsAlma && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsAlma(${toJson()})';
}
