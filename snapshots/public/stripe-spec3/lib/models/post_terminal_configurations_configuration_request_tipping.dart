// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tipping2.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestTippingVariant2 {const PostTerminalConfigurationsConfigurationRequestTippingVariant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestTippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestTippingVariant2._(json),
}; }

static const PostTerminalConfigurationsConfigurationRequestTippingVariant2 $empty = PostTerminalConfigurationsConfigurationRequestTippingVariant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestTippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestTippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsConfigurationRequestTippingVariant2($value)'; } 
 }
/// Tipping configurations for readers that support on-reader tips.
@immutable
final class PostTerminalConfigurationsConfigurationRequestTipping {
  const PostTerminalConfigurationsConfigurationRequestTipping({this.tipping2 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestTippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestTipping._({required this.rawValue, required this.tipping2,
required this.postTerminalConfigurationsConfigurationRequestTippingVariant2,});
  factory PostTerminalConfigurationsConfigurationRequestTipping.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestTipping._(
    rawValue: Omittable(json),
    tipping2: parseAnyOfVariant<Tipping2>(json, (value) => Tipping2.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestTippingVariant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestTippingVariant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestTippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Tipping2> tipping2;
final Omittable<PostTerminalConfigurationsConfigurationRequestTippingVariant2> postTerminalConfigurationsConfigurationRequestTippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => tipping2.isPresent || postTerminalConfigurationsConfigurationRequestTippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (tipping2.isPresent) tipping2.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestTippingVariant2.isPresent) postTerminalConfigurationsConfigurationRequestTippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestTipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestTipping(${toJson()})';
}
