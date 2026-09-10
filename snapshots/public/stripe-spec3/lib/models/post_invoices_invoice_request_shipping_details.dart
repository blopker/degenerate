// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'recipient_shipping_with_optional_fields_address.dart';@immutable final class PostInvoicesInvoiceRequestShippingDetailsVariant2 {const PostInvoicesInvoiceRequestShippingDetailsVariant2._(this.value);

factory PostInvoicesInvoiceRequestShippingDetailsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestShippingDetailsVariant2._(json),
};}

static const PostInvoicesInvoiceRequestShippingDetailsVariant2 $empty = PostInvoicesInvoiceRequestShippingDetailsVariant2._('');

static const List<PostInvoicesInvoiceRequestShippingDetailsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestShippingDetailsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestShippingDetailsVariant2($value)';}
}
/// Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
@immutable
final class PostInvoicesInvoiceRequestShippingDetails {
  const PostInvoicesInvoiceRequestShippingDetails({this.recipientShippingWithOptionalFieldsAddress = const Omittable.absent(),
this.postInvoicesInvoiceRequestShippingDetailsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestShippingDetails._({required this.rawValue, required this.recipientShippingWithOptionalFieldsAddress,
required this.postInvoicesInvoiceRequestShippingDetailsVariant2,});
  factory PostInvoicesInvoiceRequestShippingDetails.fromJson(Object? json) => PostInvoicesInvoiceRequestShippingDetails._(
    rawValue: Omittable(json),
    recipientShippingWithOptionalFieldsAddress: parseAnyOfVariant<RecipientShippingWithOptionalFieldsAddress>(json, (value) => RecipientShippingWithOptionalFieldsAddress.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestShippingDetailsVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestShippingDetailsVariant2>(json, (value) => PostInvoicesInvoiceRequestShippingDetailsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RecipientShippingWithOptionalFieldsAddress> recipientShippingWithOptionalFieldsAddress;
final Omittable<PostInvoicesInvoiceRequestShippingDetailsVariant2> postInvoicesInvoiceRequestShippingDetailsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => recipientShippingWithOptionalFieldsAddress.isPresent || postInvoicesInvoiceRequestShippingDetailsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (recipientShippingWithOptionalFieldsAddress.isPresent) recipientShippingWithOptionalFieldsAddress.value?.toJson(),
if (postInvoicesInvoiceRequestShippingDetailsVariant2.isPresent) postInvoicesInvoiceRequestShippingDetailsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestShippingDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestShippingDetails(${toJson()})';
}
