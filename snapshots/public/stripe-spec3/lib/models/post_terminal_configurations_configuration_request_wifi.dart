// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wifi2.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestWifiVariant2 {const PostTerminalConfigurationsConfigurationRequestWifiVariant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestWifiVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestWifiVariant2._(json),
};}

static const PostTerminalConfigurationsConfigurationRequestWifiVariant2 $empty = PostTerminalConfigurationsConfigurationRequestWifiVariant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestWifiVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestWifiVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsConfigurationRequestWifiVariant2($value)';}
}
/// Configurations for connecting to a WiFi network.
@immutable
final class PostTerminalConfigurationsConfigurationRequestWifi {
  const PostTerminalConfigurationsConfigurationRequestWifi({this.wifi2 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestWifiVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestWifi._({required this.rawValue, required this.wifi2,
required this.postTerminalConfigurationsConfigurationRequestWifiVariant2,});
  factory PostTerminalConfigurationsConfigurationRequestWifi.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestWifi._(
    rawValue: Omittable(json),
    wifi2: parseAnyOfVariant<Wifi2>(json, (value) => Wifi2.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestWifiVariant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestWifiVariant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestWifiVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Wifi2> wifi2;
final Omittable<PostTerminalConfigurationsConfigurationRequestWifiVariant2> postTerminalConfigurationsConfigurationRequestWifiVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => wifi2.isPresent || postTerminalConfigurationsConfigurationRequestWifiVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (wifi2.isPresent) wifi2.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestWifiVariant2.isPresent) postTerminalConfigurationsConfigurationRequestWifiVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestWifi && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestWifi(${toJson()})';
}
