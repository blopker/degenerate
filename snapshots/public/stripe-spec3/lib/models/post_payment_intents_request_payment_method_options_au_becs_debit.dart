// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param2.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebit {
  const PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebit({this.paymentIntentPaymentMethodOptionsParam2 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam2,
required this.postPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebit.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam2>(json, (value) => PaymentIntentPaymentMethodOptionsParam2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam2> paymentIntentPaymentMethodOptionsParam2;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2> postPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam2.isPresent || postPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam2.isPresent) paymentIntentPaymentMethodOptionsParam2.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsAuBecsDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsAuBecsDebit(${toJson()})';
}
