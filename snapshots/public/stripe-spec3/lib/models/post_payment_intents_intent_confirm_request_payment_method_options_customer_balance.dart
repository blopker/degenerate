// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param34.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalance {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalance({this.paymentIntentPaymentMethodOptionsParam34 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam34,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam34: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam34>(json, (value) => PaymentIntentPaymentMethodOptionsParam34.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam34> paymentIntentPaymentMethodOptionsParam34;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam34.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam34.isPresent) paymentIntentPaymentMethodOptionsParam34.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCustomerBalance(${toJson()})';
}
