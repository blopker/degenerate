// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2 {const PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2($value)'; } 
 }

@immutable
final class PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrl {
  const PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrl({this.string = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrl._({required this.rawValue, required this.string,
required this.postBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrl.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2> postBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestBusinessProfilePrivacyPolicyUrl(${toJson()})';
}
