// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'offline.dart';@immutable final class PostTerminalConfigurationsRequestOfflineVariant2 {const PostTerminalConfigurationsRequestOfflineVariant2._(this.value);

factory PostTerminalConfigurationsRequestOfflineVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestOfflineVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestOfflineVariant2 $empty = PostTerminalConfigurationsRequestOfflineVariant2._('');

static const List<PostTerminalConfigurationsRequestOfflineVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestOfflineVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestOfflineVariant2($value)'; } 
 }
/// Configurations for collecting transactions offline.
@immutable
final class PostTerminalConfigurationsRequestOffline {
  const PostTerminalConfigurationsRequestOffline({this.offline = const Omittable.absent(),
this.postTerminalConfigurationsRequestOfflineVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestOffline._({required this.rawValue, required this.offline,
required this.postTerminalConfigurationsRequestOfflineVariant2,});
  factory PostTerminalConfigurationsRequestOffline.fromJson(Object? json) => PostTerminalConfigurationsRequestOffline._(
    rawValue: Omittable(json),
    offline: parseAnyOfVariant<Offline>(json, (value) => Offline.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsRequestOfflineVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestOfflineVariant2>(json, (value) => PostTerminalConfigurationsRequestOfflineVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Offline> offline;
final Omittable<PostTerminalConfigurationsRequestOfflineVariant2> postTerminalConfigurationsRequestOfflineVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => offline.isPresent || postTerminalConfigurationsRequestOfflineVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (offline.isPresent) offline.value?.toJson(),
if (postTerminalConfigurationsRequestOfflineVariant2.isPresent) postTerminalConfigurationsRequestOfflineVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestOffline && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestOffline(${toJson()})';
}
