// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.fromJson(String json) {return switch (json) {
  'customer_service' => customerService,
  'low_quality' => lowQuality,
  'missing_features' => missingFeatures,
  'other' => $other,
  'switched_service' => switchedService,
  'too_complex' => tooComplex,
  'too_expensive' => tooExpensive,
  'unused' => unused,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._(json),
};}

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 customerService = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('customer_service');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 lowQuality = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('low_quality');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 missingFeatures = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('missing_features');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 $other = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('other');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 switchedService = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('switched_service');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 tooComplex = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('too_complex');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 tooExpensive = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('too_expensive');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 unused = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('unused');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1> values = [customerService, lowQuality, missingFeatures, $other, switchedService, tooComplex, tooExpensive, unused];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1($value)';}
}
@immutable final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._(json),
};}

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2($value)';}
}

@immutable
final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptions {
  const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptions({this.listPostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptions._({required this.rawValue, required this.listPostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1,
required this.postBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2,});
  factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptions.fromJson(Object? json) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptions._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.fromJson(e as String)).toList()),
postBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2>(json, (value) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1>> listPostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1;
final Omittable<PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2> postBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.isPresent || postBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.isPresent) listPostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.isPresent) postBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionCancelCancellationReasonOptions(${toJson()})';
}
