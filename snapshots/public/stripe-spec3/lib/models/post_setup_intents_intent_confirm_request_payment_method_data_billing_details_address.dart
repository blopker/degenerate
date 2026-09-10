// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address9.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress9 = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress9,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress9: parseAnyOfVariant<BillingDetailsAddress9>(json, (value) => BillingDetailsAddress9.fromJson(value! as Map<String, dynamic>)),
postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress9> billingDetailsAddress9;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress9.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress9.isPresent) billingDetailsAddress9.value?.toJson(),
if (postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
