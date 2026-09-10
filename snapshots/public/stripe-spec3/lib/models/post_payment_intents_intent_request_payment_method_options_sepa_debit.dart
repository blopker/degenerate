// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param26.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebit {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebit({this.paymentIntentPaymentMethodOptionsParam26 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam26,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebit.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam26: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam26>(json, (value) => PaymentIntentPaymentMethodOptionsParam26.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam26> paymentIntentPaymentMethodOptionsParam26;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam26.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam26.isPresent) paymentIntentPaymentMethodOptionsParam26.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSepaDebit(${toJson()})';
}
