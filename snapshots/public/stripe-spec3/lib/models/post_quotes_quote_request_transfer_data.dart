// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs4.dart';@immutable final class PostQuotesQuoteRequestTransferDataVariant2 {const PostQuotesQuoteRequestTransferDataVariant2._(this.value);

factory PostQuotesQuoteRequestTransferDataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestTransferDataVariant2._(json),
};}

static const PostQuotesQuoteRequestTransferDataVariant2 $empty = PostQuotesQuoteRequestTransferDataVariant2._('');

static const List<PostQuotesQuoteRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesQuoteRequestTransferDataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesQuoteRequestTransferDataVariant2($value)';}
}
/// The data with which to automatically create a Transfer for each of the invoices.
@immutable
final class PostQuotesQuoteRequestTransferData {
  const PostQuotesQuoteRequestTransferData({this.transferDataSpecs4 = const Omittable.absent(),
this.postQuotesQuoteRequestTransferDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestTransferData._({required this.rawValue, required this.transferDataSpecs4,
required this.postQuotesQuoteRequestTransferDataVariant2,});
  factory PostQuotesQuoteRequestTransferData.fromJson(Object? json) => PostQuotesQuoteRequestTransferData._(
    rawValue: Omittable(json),
    transferDataSpecs4: parseAnyOfVariant<TransferDataSpecs4>(json, (value) => TransferDataSpecs4.fromJson(value! as Map<String, dynamic>)),
postQuotesQuoteRequestTransferDataVariant2: parseAnyOfVariant<PostQuotesQuoteRequestTransferDataVariant2>(json, (value) => PostQuotesQuoteRequestTransferDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TransferDataSpecs4> transferDataSpecs4;
final Omittable<PostQuotesQuoteRequestTransferDataVariant2> postQuotesQuoteRequestTransferDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => transferDataSpecs4.isPresent || postQuotesQuoteRequestTransferDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (transferDataSpecs4.isPresent) transferDataSpecs4.value?.toJson(),
if (postQuotesQuoteRequestTransferDataVariant2.isPresent) postQuotesQuoteRequestTransferDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestTransferData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestTransferData(${toJson()})';
}
