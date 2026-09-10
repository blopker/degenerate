// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bbpos_wise_pad3.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2 {const PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2._(json),
}; }

static const PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2 $empty = PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2($value)'; } 
 }
/// An object containing device type specific settings for BBPOS WisePad 3 readers.
@immutable
final class PostTerminalConfigurationsConfigurationRequestBbposWisepad3 {
  const PostTerminalConfigurationsConfigurationRequestBbposWisepad3({this.bbposWisePad3 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestBbposWisepad3._({required this.rawValue, required this.bbposWisePad3,
required this.postTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2,});
  factory PostTerminalConfigurationsConfigurationRequestBbposWisepad3.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestBbposWisepad3._(
    rawValue: Omittable(json),
    bbposWisePad3: parseAnyOfVariant<BbposWisePad3>(json, (value) => BbposWisePad3.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BbposWisePad3> bbposWisePad3;
final Omittable<PostTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2> postTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => bbposWisePad3.isPresent || postTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (bbposWisePad3.isPresent) bbposWisePad3.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2.isPresent) postTerminalConfigurationsConfigurationRequestBbposWisepad3Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestBbposWisepad3 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestBbposWisepad3(${toJson()})';
}
