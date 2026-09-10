// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2 {const PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2($value)'; } 
 }
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostBillingPortalConfigurationsConfigurationRequestMetadata {
  const PostBillingPortalConfigurationsConfigurationRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postBillingPortalConfigurationsConfigurationRequestMetadataVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestMetadata.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postBillingPortalConfigurationsConfigurationRequestMetadataVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestMetadataVariant2> postBillingPortalConfigurationsConfigurationRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postBillingPortalConfigurationsConfigurationRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postBillingPortalConfigurationsConfigurationRequestMetadataVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestMetadata(${toJson()})';
}
