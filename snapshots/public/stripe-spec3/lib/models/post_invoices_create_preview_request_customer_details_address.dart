// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'optional_fields_address.dart';@immutable final class PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2 {const PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2 $empty = PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2._('');

static const List<PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestCustomerDetailsAddress {
  const PostInvoicesCreatePreviewRequestCustomerDetailsAddress({this.optionalFieldsAddress = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestCustomerDetailsAddress._({required this.rawValue, required this.optionalFieldsAddress,
required this.postInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2,});
  factory PostInvoicesCreatePreviewRequestCustomerDetailsAddress.fromJson(Object? json) => PostInvoicesCreatePreviewRequestCustomerDetailsAddress._(
    rawValue: Omittable(json),
    optionalFieldsAddress: parseAnyOfVariant<OptionalFieldsAddress>(json, (value) => OptionalFieldsAddress.fromJson(value! as Map<String, dynamic>)),
postInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2>(json, (value) => PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<OptionalFieldsAddress> optionalFieldsAddress;
final Omittable<PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2> postInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => optionalFieldsAddress.isPresent || postInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (optionalFieldsAddress.isPresent) optionalFieldsAddress.value?.toJson(),
if (postInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2.isPresent) postInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestCustomerDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestCustomerDetailsAddress(${toJson()})';
}
