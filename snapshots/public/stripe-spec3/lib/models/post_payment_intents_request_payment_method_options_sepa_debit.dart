// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param12.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit {
  const PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit({this.paymentIntentPaymentMethodOptionsParam12 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam12,
required this.postPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam12: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam12>(json, (value) => PaymentIntentPaymentMethodOptionsParam12.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam12> paymentIntentPaymentMethodOptionsParam12;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2> postPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam12.isPresent || postPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam12.isPresent) paymentIntentPaymentMethodOptionsParam12.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit(${toJson()})';
}
