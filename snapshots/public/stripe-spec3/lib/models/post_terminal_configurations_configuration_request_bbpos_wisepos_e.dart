// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bbpos_wise_pose.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2 {const PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2._(json),
}; }

static const PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2 $empty = PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2($value)'; } 
 }
/// An object containing device type specific settings for BBPOS WisePOS E readers.
@immutable
final class PostTerminalConfigurationsConfigurationRequestBbposWiseposE {
  const PostTerminalConfigurationsConfigurationRequestBbposWiseposE({this.bbposWisePose = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestBbposWiseposE._({required this.rawValue, required this.bbposWisePose,
required this.postTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2,});
  factory PostTerminalConfigurationsConfigurationRequestBbposWiseposE.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestBbposWiseposE._(
    rawValue: Omittable(json),
    bbposWisePose: parseAnyOfVariant<BbposWisePose>(json, (value) => BbposWisePose.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BbposWisePose> bbposWisePose;
final Omittable<PostTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2> postTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => bbposWisePose.isPresent || postTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (bbposWisePose.isPresent) bbposWisePose.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2.isPresent) postTerminalConfigurationsConfigurationRequestBbposWiseposEVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestBbposWiseposE && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestBbposWiseposE(${toJson()})';
}
