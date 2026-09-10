// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param2.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpay {
  const PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpay({this.paymentMethodOptionsParam2 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpay._({required this.rawValue, required this.paymentMethodOptionsParam2,
required this.postPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam2: parseAnyOfVariant<PaymentMethodOptionsParam2>(json, (value) => PaymentMethodOptionsParam2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam2> paymentMethodOptionsParam2;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2> postPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam2.isPresent || postPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam2.isPresent) paymentMethodOptionsParam2.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsAfterpayClearpay(${toJson()})';
}
