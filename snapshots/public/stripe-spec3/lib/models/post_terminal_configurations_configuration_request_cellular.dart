// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cellular2.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestCellularVariant2 {const PostTerminalConfigurationsConfigurationRequestCellularVariant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestCellularVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestCellularVariant2._(json),
};}

static const PostTerminalConfigurationsConfigurationRequestCellularVariant2 $empty = PostTerminalConfigurationsConfigurationRequestCellularVariant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestCellularVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestCellularVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsConfigurationRequestCellularVariant2($value)';}
}
/// Configuration for cellular connectivity.
@immutable
final class PostTerminalConfigurationsConfigurationRequestCellular {
  const PostTerminalConfigurationsConfigurationRequestCellular({this.cellular2 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestCellularVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestCellular._({required this.rawValue, required this.cellular2,
required this.postTerminalConfigurationsConfigurationRequestCellularVariant2,});
  factory PostTerminalConfigurationsConfigurationRequestCellular.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestCellular._(
    rawValue: Omittable(json),
    cellular2: parseAnyOfVariant<Cellular2>(json, (value) => Cellular2.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestCellularVariant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestCellularVariant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestCellularVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Cellular2> cellular2;
final Omittable<PostTerminalConfigurationsConfigurationRequestCellularVariant2> postTerminalConfigurationsConfigurationRequestCellularVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => cellular2.isPresent || postTerminalConfigurationsConfigurationRequestCellularVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (cellular2.isPresent) cellular2.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestCellularVariant2.isPresent) postTerminalConfigurationsConfigurationRequestCellularVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestCellular && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestCellular(${toJson()})';
}
