// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address6.dart';@immutable final class PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2 {const PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2._(this.value);

factory PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2._(json),
};}

static const PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2 $empty = PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2._('');

static const List<PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2($value)';}
}

@immutable
final class PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress {
  const PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress({this.billingDetailsAddress6 = const Omittable.absent(),
this.postPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress6,
required this.postPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2,});
  factory PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress.fromJson(Object? json) => PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress6: parseAnyOfVariant<BillingDetailsAddress6>(json, (value) => BillingDetailsAddress6.fromJson(value! as Map<String, dynamic>)),
postPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2: parseAnyOfVariant<PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2>(json, (value) => PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress6> billingDetailsAddress6;
final Omittable<PostPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2> postPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress6.isPresent || postPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress6.isPresent) billingDetailsAddress6.value?.toJson(),
if (postPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2.isPresent) postPaymentMethodsPaymentMethodRequestBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsPaymentMethodRequestBillingDetailsAddress(${toJson()})';
}
