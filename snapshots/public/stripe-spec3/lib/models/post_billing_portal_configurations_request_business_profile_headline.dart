// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2 {const PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2._(json),
}; }

static const PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2 $empty = PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2._('');

static const List<PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2($value)'; } 
 }

@immutable
final class PostBillingPortalConfigurationsRequestBusinessProfileHeadline {
  const PostBillingPortalConfigurationsRequestBusinessProfileHeadline({this.string = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestBusinessProfileHeadline._({required this.rawValue, required this.string,
required this.postBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2,});
  factory PostBillingPortalConfigurationsRequestBusinessProfileHeadline.fromJson(Object? json) => PostBillingPortalConfigurationsRequestBusinessProfileHeadline._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2>(json, (value) => PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2> postBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2.isPresent) postBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestBusinessProfileHeadline && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestBusinessProfileHeadline(${toJson()})';
}
