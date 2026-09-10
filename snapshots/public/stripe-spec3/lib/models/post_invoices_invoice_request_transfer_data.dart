// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs2.dart';@immutable final class PostInvoicesInvoiceRequestTransferDataVariant2 {const PostInvoicesInvoiceRequestTransferDataVariant2._(this.value);

factory PostInvoicesInvoiceRequestTransferDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestTransferDataVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestTransferDataVariant2 $empty = PostInvoicesInvoiceRequestTransferDataVariant2._('');

static const List<PostInvoicesInvoiceRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestTransferDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestTransferDataVariant2($value)'; } 
 }
/// If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice's charge. This will be unset if you POST an empty value.
@immutable
final class PostInvoicesInvoiceRequestTransferData {
  const PostInvoicesInvoiceRequestTransferData({this.transferDataSpecs2 = const Omittable.absent(),
this.postInvoicesInvoiceRequestTransferDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestTransferData._({required this.rawValue, required this.transferDataSpecs2,
required this.postInvoicesInvoiceRequestTransferDataVariant2,});
  factory PostInvoicesInvoiceRequestTransferData.fromJson(Object? json) => PostInvoicesInvoiceRequestTransferData._(
    rawValue: Omittable(json),
    transferDataSpecs2: parseAnyOfVariant<TransferDataSpecs2>(json, (value) => TransferDataSpecs2.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestTransferDataVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestTransferDataVariant2>(json, (value) => PostInvoicesInvoiceRequestTransferDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TransferDataSpecs2> transferDataSpecs2;
final Omittable<PostInvoicesInvoiceRequestTransferDataVariant2> postInvoicesInvoiceRequestTransferDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => transferDataSpecs2.isPresent || postInvoicesInvoiceRequestTransferDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (transferDataSpecs2.isPresent) transferDataSpecs2.value?.toJson(),
if (postInvoicesInvoiceRequestTransferDataVariant2.isPresent) postInvoicesInvoiceRequestTransferDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestTransferData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestTransferData(${toJson()})';
}
