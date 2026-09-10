// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.fromJson(String json) {return switch (json) {
  'customer_service' => customerService,
  'low_quality' => lowQuality,
  'missing_features' => missingFeatures,
  'other' => $other,
  'switched_service' => switchedService,
  'too_complex' => tooComplex,
  'too_expensive' => tooExpensive,
  'unused' => unused,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._(json),
};}

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 customerService = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('customer_service');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 lowQuality = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('low_quality');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 missingFeatures = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('missing_features');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 $other = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('other');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 switchedService = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('switched_service');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 tooComplex = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('too_complex');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 tooExpensive = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('too_expensive');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 unused = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('unused');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1> values = [customerService, lowQuality, missingFeatures, $other, switchedService, tooComplex, tooExpensive, unused];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1($value)';}
}
@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._(json),
};}

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2($value)';}
}

@immutable
final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions {
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions({this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions._({required this.rawValue, required this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1,
required this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.fromJson(e as String)).toList()),
postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1>> listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2> postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.isPresent || postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.isPresent) listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions(${toJson()})';
}
