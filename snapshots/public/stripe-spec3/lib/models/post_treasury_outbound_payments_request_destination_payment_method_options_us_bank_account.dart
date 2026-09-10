// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param112.dart';@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._(json),
}; }

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 $empty = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2($value)'; } 
 }

@immutable
final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount {
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount({this.paymentMethodOptionsParam112 = const Omittable.absent(),
this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.paymentMethodOptionsParam112,
required this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam112: parseAnyOfVariant<PaymentMethodOptionsParam112>(json, (value) => PaymentMethodOptionsParam112.fromJson(value! as Map<String, dynamic>)),
postTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam112> paymentMethodOptionsParam112;
final Omittable<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2> postTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam112.isPresent || postTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam112.isPresent) paymentMethodOptionsParam112.value?.toJson(),
if (postTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.isPresent) postTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount(${toJson()})';
}
