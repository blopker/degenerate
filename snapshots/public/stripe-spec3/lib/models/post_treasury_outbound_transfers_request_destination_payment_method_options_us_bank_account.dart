// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param113.dart';@immutable final class PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 {const PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._(json),
}; }

static const PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 $empty = PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2($value)'; } 
 }

@immutable
final class PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount {
  const PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount({this.paymentMethodOptionsParam113 = const Omittable.absent(),
this.postTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.paymentMethodOptionsParam113,
required this.postTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam113: parseAnyOfVariant<PaymentMethodOptionsParam113>(json, (value) => PaymentMethodOptionsParam113.fromJson(value! as Map<String, dynamic>)),
postTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam113> paymentMethodOptionsParam113;
final Omittable<PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2> postTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam113.isPresent || postTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam113.isPresent) paymentMethodOptionsParam113.value?.toJson(),
if (postTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.isPresent) postTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount(${toJson()})';
}
