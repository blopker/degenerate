// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'trial_settings_config.dart';@immutable final class PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2 {const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2 $empty = PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettings {
  const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettings({this.trialSettingsConfig = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettings._({required this.rawValue, required this.trialSettingsConfig,
required this.postPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2,});
  factory PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettings.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettings._(
    rawValue: Omittable(json),
    trialSettingsConfig: parseAnyOfVariant<TrialSettingsConfig>(json, (value) => TrialSettingsConfig.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TrialSettingsConfig> trialSettingsConfig;
final Omittable<PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2> postPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => trialSettingsConfig.isPresent || postPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (trialSettingsConfig.isPresent) trialSettingsConfig.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2.isPresent) postPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettingsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettings && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestSubscriptionDataTrialSettings(${toJson()})';
}
