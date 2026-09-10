// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address10.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }

@immutable
final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress {
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress10 = const Omittable.absent(),
this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress10,
required this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress10: parseAnyOfVariant<BillingDetailsAddress10>(json, (value) => BillingDetailsAddress10.fromJson(value! as Map<String, dynamic>)),
postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress10> billingDetailsAddress10;
final Omittable<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2> postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress10.isPresent || postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress10.isPresent) billingDetailsAddress10.value?.toJson(),
if (postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
