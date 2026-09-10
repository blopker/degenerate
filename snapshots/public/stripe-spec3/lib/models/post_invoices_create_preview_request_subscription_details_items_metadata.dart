// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata({this.mapStringString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata._({required this.rawValue, required this.mapStringString,
required this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2> postInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata(${toJson()})';
}
