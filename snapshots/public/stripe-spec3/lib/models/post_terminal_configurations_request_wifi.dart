// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wifi.dart';@immutable final class PostTerminalConfigurationsRequestWifiVariant2 {const PostTerminalConfigurationsRequestWifiVariant2._(this.value);

factory PostTerminalConfigurationsRequestWifiVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestWifiVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestWifiVariant2 $empty = PostTerminalConfigurationsRequestWifiVariant2._('');

static const List<PostTerminalConfigurationsRequestWifiVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestWifiVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestWifiVariant2($value)'; } 
 }
/// Configurations for connecting to a WiFi network.
@immutable
final class PostTerminalConfigurationsRequestWifi {
  const PostTerminalConfigurationsRequestWifi({this.wifi = const Omittable.absent(),
this.postTerminalConfigurationsRequestWifiVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestWifi._({required this.rawValue, required this.wifi,
required this.postTerminalConfigurationsRequestWifiVariant2,});
  factory PostTerminalConfigurationsRequestWifi.fromJson(Object? json) => PostTerminalConfigurationsRequestWifi._(
    rawValue: Omittable(json),
    wifi: parseAnyOfVariant<Wifi>(json, (value) => Wifi.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsRequestWifiVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestWifiVariant2>(json, (value) => PostTerminalConfigurationsRequestWifiVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Wifi> wifi;
final Omittable<PostTerminalConfigurationsRequestWifiVariant2> postTerminalConfigurationsRequestWifiVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => wifi.isPresent || postTerminalConfigurationsRequestWifiVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (wifi.isPresent) wifi.value?.toJson(),
if (postTerminalConfigurationsRequestWifiVariant2.isPresent) postTerminalConfigurationsRequestWifiVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestWifi && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestWifi(${toJson()})';
}
