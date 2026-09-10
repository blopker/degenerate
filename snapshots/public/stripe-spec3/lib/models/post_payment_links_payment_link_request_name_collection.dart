// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'name_collection_params.dart';@immutable final class PostPaymentLinksPaymentLinkRequestNameCollectionVariant2 {const PostPaymentLinksPaymentLinkRequestNameCollectionVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestNameCollectionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestNameCollectionVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestNameCollectionVariant2 $empty = PostPaymentLinksPaymentLinkRequestNameCollectionVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestNameCollectionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestNameCollectionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestNameCollectionVariant2($value)'; } 
 }
/// Controls settings applied for collecting the customer's name.
@immutable
final class PostPaymentLinksPaymentLinkRequestNameCollection {
  const PostPaymentLinksPaymentLinkRequestNameCollection({this.nameCollectionParams = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestNameCollectionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestNameCollection._({required this.rawValue, required this.nameCollectionParams,
required this.postPaymentLinksPaymentLinkRequestNameCollectionVariant2,});
  factory PostPaymentLinksPaymentLinkRequestNameCollection.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestNameCollection._(
    rawValue: Omittable(json),
    nameCollectionParams: parseAnyOfVariant<NameCollectionParams>(json, (value) => NameCollectionParams.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestNameCollectionVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestNameCollectionVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestNameCollectionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<NameCollectionParams> nameCollectionParams;
final Omittable<PostPaymentLinksPaymentLinkRequestNameCollectionVariant2> postPaymentLinksPaymentLinkRequestNameCollectionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => nameCollectionParams.isPresent || postPaymentLinksPaymentLinkRequestNameCollectionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (nameCollectionParams.isPresent) nameCollectionParams.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestNameCollectionVariant2.isPresent) postPaymentLinksPaymentLinkRequestNameCollectionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestNameCollection && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestNameCollection(${toJson()})';
}
