// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cellular.dart';@immutable final class PostTerminalConfigurationsRequestCellularVariant2 {const PostTerminalConfigurationsRequestCellularVariant2._(this.value);

factory PostTerminalConfigurationsRequestCellularVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestCellularVariant2._(json),
};}

static const PostTerminalConfigurationsRequestCellularVariant2 $empty = PostTerminalConfigurationsRequestCellularVariant2._('');

static const List<PostTerminalConfigurationsRequestCellularVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsRequestCellularVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsRequestCellularVariant2($value)';}
}
/// Configuration for cellular connectivity.
@immutable
final class PostTerminalConfigurationsRequestCellular {
  const PostTerminalConfigurationsRequestCellular({this.cellular = const Omittable.absent(),
this.postTerminalConfigurationsRequestCellularVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestCellular._({required this.rawValue, required this.cellular,
required this.postTerminalConfigurationsRequestCellularVariant2,});
  factory PostTerminalConfigurationsRequestCellular.fromJson(Object? json) => PostTerminalConfigurationsRequestCellular._(
    rawValue: Omittable(json),
    cellular: parseAnyOfVariant<Cellular>(json, (value) => Cellular.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsRequestCellularVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestCellularVariant2>(json, (value) => PostTerminalConfigurationsRequestCellularVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Cellular> cellular;
final Omittable<PostTerminalConfigurationsRequestCellularVariant2> postTerminalConfigurationsRequestCellularVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => cellular.isPresent || postTerminalConfigurationsRequestCellularVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (cellular.isPresent) cellular.value?.toJson(),
if (postTerminalConfigurationsRequestCellularVariant2.isPresent) postTerminalConfigurationsRequestCellularVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestCellular && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestCellular(${toJson()})';
}
