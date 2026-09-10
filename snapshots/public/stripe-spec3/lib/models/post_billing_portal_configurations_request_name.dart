// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestNameVariant2 {const PostBillingPortalConfigurationsRequestNameVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestNameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestNameVariant2._(json),
};}

static const PostBillingPortalConfigurationsRequestNameVariant2 $empty = PostBillingPortalConfigurationsRequestNameVariant2._('');

static const List<PostBillingPortalConfigurationsRequestNameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestNameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsRequestNameVariant2($value)';}
}
/// The name of the configuration.
@immutable
final class PostBillingPortalConfigurationsRequestName {
  const PostBillingPortalConfigurationsRequestName({this.string = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestName._({required this.rawValue, required this.string,
required this.postBillingPortalConfigurationsRequestNameVariant2,});
  factory PostBillingPortalConfigurationsRequestName.fromJson(Object? json) => PostBillingPortalConfigurationsRequestName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postBillingPortalConfigurationsRequestNameVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestNameVariant2>(json, (value) => PostBillingPortalConfigurationsRequestNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostBillingPortalConfigurationsRequestNameVariant2> postBillingPortalConfigurationsRequestNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postBillingPortalConfigurationsRequestNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postBillingPortalConfigurationsRequestNameVariant2.isPresent) postBillingPortalConfigurationsRequestNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestName(${toJson()})';
}
