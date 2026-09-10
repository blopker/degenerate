// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 {const PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2($value)'; } 
 }

@immutable
final class PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration {
  const PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration({this.string = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration._({required this.rawValue, required this.string,
required this.postBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2,});
  factory PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration.fromJson(Object? json) => PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2>(json, (value) => PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2> postBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.isPresent) postBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration(${toJson()})';
}
