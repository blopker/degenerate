// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestNameVariant2 {const PostBillingPortalConfigurationsConfigurationRequestNameVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestNameVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestNameVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestNameVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestNameVariant2($value)'; } 
 }
/// The name of the configuration.
@immutable
final class PostBillingPortalConfigurationsConfigurationRequestName {
  const PostBillingPortalConfigurationsConfigurationRequestName({this.string = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestName._({required this.rawValue, required this.string,
required this.postBillingPortalConfigurationsConfigurationRequestNameVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestName.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postBillingPortalConfigurationsConfigurationRequestNameVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestNameVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestNameVariant2> postBillingPortalConfigurationsConfigurationRequestNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postBillingPortalConfigurationsConfigurationRequestNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postBillingPortalConfigurationsConfigurationRequestNameVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestName(${toJson()})';
}
