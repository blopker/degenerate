// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address7.dart';@immutable final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress {
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress7 = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress7,
required this.postSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress7: parseAnyOfVariant<BillingDetailsAddress7>(json, (value) => BillingDetailsAddress7.fromJson(value! as Map<String, dynamic>)),
postSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress7> billingDetailsAddress7;
final Omittable<PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2> postSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress7.isPresent || postSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress7.isPresent) billingDetailsAddress7.value?.toJson(),
if (postSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postSetupIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
