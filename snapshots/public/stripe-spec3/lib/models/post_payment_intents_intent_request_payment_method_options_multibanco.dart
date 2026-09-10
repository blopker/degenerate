// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param59.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibanco {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibanco({this.paymentMethodOptionsParam59 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibanco._({required this.rawValue, required this.paymentMethodOptionsParam59,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibanco.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibanco._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam59: parseAnyOfVariant<PaymentMethodOptionsParam59>(json, (value) => PaymentMethodOptionsParam59.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam59> paymentMethodOptionsParam59;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam59.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam59.isPresent) paymentMethodOptionsParam59.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsMultibancoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibanco && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsMultibanco(${toJson()})';
}
