// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs3.dart';@immutable final class PostQuotesRequestTransferDataVariant2 {const PostQuotesRequestTransferDataVariant2._(this.value);

factory PostQuotesRequestTransferDataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestTransferDataVariant2._(json),
};}

static const PostQuotesRequestTransferDataVariant2 $empty = PostQuotesRequestTransferDataVariant2._('');

static const List<PostQuotesRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesRequestTransferDataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesRequestTransferDataVariant2($value)';}
}
/// The data with which to automatically create a Transfer for each of the invoices.
@immutable
final class PostQuotesRequestTransferData {
  const PostQuotesRequestTransferData({this.transferDataSpecs3 = const Omittable.absent(),
this.postQuotesRequestTransferDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestTransferData._({required this.rawValue, required this.transferDataSpecs3,
required this.postQuotesRequestTransferDataVariant2,});
  factory PostQuotesRequestTransferData.fromJson(Object? json) => PostQuotesRequestTransferData._(
    rawValue: Omittable(json),
    transferDataSpecs3: parseAnyOfVariant<TransferDataSpecs3>(json, (value) => TransferDataSpecs3.fromJson(value! as Map<String, dynamic>)),
postQuotesRequestTransferDataVariant2: parseAnyOfVariant<PostQuotesRequestTransferDataVariant2>(json, (value) => PostQuotesRequestTransferDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TransferDataSpecs3> transferDataSpecs3;
final Omittable<PostQuotesRequestTransferDataVariant2> postQuotesRequestTransferDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => transferDataSpecs3.isPresent || postQuotesRequestTransferDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (transferDataSpecs3.isPresent) transferDataSpecs3.value?.toJson(),
if (postQuotesRequestTransferDataVariant2.isPresent) postQuotesRequestTransferDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestTransferData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestTransferData(${toJson()})';
}
