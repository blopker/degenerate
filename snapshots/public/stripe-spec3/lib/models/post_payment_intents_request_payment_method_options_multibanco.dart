// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param22.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsMultibanco {
  const PostPaymentIntentsRequestPaymentMethodOptionsMultibanco({this.paymentMethodOptionsParam22 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsMultibanco._({required this.rawValue, required this.paymentMethodOptionsParam22,
required this.postPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsMultibanco.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsMultibanco._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam22: parseAnyOfVariant<PaymentMethodOptionsParam22>(json, (value) => PaymentMethodOptionsParam22.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam22> paymentMethodOptionsParam22;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2> postPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam22.isPresent || postPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam22.isPresent) paymentMethodOptionsParam22.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsMultibanco && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsMultibanco(${toJson()})';
}
