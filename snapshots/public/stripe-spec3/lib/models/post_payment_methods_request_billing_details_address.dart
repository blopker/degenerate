// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address5.dart';@immutable final class PostPaymentMethodsRequestBillingDetailsAddressVariant2 {const PostPaymentMethodsRequestBillingDetailsAddressVariant2._(this.value);

factory PostPaymentMethodsRequestBillingDetailsAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentMethodsRequestBillingDetailsAddressVariant2._(json),
};}

static const PostPaymentMethodsRequestBillingDetailsAddressVariant2 $empty = PostPaymentMethodsRequestBillingDetailsAddressVariant2._('');

static const List<PostPaymentMethodsRequestBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentMethodsRequestBillingDetailsAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentMethodsRequestBillingDetailsAddressVariant2($value)';}
}

@immutable
final class PostPaymentMethodsRequestBillingDetailsAddress {
  const PostPaymentMethodsRequestBillingDetailsAddress({this.billingDetailsAddress5 = const Omittable.absent(),
this.postPaymentMethodsRequestBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsRequestBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress5,
required this.postPaymentMethodsRequestBillingDetailsAddressVariant2,});
  factory PostPaymentMethodsRequestBillingDetailsAddress.fromJson(Object? json) => PostPaymentMethodsRequestBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress5: parseAnyOfVariant<BillingDetailsAddress5>(json, (value) => BillingDetailsAddress5.fromJson(value! as Map<String, dynamic>)),
postPaymentMethodsRequestBillingDetailsAddressVariant2: parseAnyOfVariant<PostPaymentMethodsRequestBillingDetailsAddressVariant2>(json, (value) => PostPaymentMethodsRequestBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress5> billingDetailsAddress5;
final Omittable<PostPaymentMethodsRequestBillingDetailsAddressVariant2> postPaymentMethodsRequestBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress5.isPresent || postPaymentMethodsRequestBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress5.isPresent) billingDetailsAddress5.value?.toJson(),
if (postPaymentMethodsRequestBillingDetailsAddressVariant2.isPresent) postPaymentMethodsRequestBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsRequestBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsRequestBillingDetailsAddress(${toJson()})';
}
