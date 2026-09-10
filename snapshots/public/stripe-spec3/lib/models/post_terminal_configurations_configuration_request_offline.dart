// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'offline2.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestOfflineVariant2 {const PostTerminalConfigurationsConfigurationRequestOfflineVariant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestOfflineVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestOfflineVariant2._(json),
};}

static const PostTerminalConfigurationsConfigurationRequestOfflineVariant2 $empty = PostTerminalConfigurationsConfigurationRequestOfflineVariant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestOfflineVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestOfflineVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsConfigurationRequestOfflineVariant2($value)';}
}
/// Configurations for collecting transactions offline.
@immutable
final class PostTerminalConfigurationsConfigurationRequestOffline {
  const PostTerminalConfigurationsConfigurationRequestOffline({this.offline2 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestOfflineVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestOffline._({required this.rawValue, required this.offline2,
required this.postTerminalConfigurationsConfigurationRequestOfflineVariant2,});
  factory PostTerminalConfigurationsConfigurationRequestOffline.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestOffline._(
    rawValue: Omittable(json),
    offline2: parseAnyOfVariant<Offline2>(json, (value) => Offline2.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestOfflineVariant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestOfflineVariant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestOfflineVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Offline2> offline2;
final Omittable<PostTerminalConfigurationsConfigurationRequestOfflineVariant2> postTerminalConfigurationsConfigurationRequestOfflineVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => offline2.isPresent || postTerminalConfigurationsConfigurationRequestOfflineVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (offline2.isPresent) offline2.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestOfflineVariant2.isPresent) postTerminalConfigurationsConfigurationRequestOfflineVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestOffline && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestOffline(${toJson()})';
}
