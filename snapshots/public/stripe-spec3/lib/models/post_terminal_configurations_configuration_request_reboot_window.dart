// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'reboot_window.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2 {const PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2._(json),
};}

static const PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2 $empty = PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2($value)';}
}
/// Reboot time settings for readers. that support customized reboot time configuration.
@immutable
final class PostTerminalConfigurationsConfigurationRequestRebootWindow {
  const PostTerminalConfigurationsConfigurationRequestRebootWindow({this.rebootWindow = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestRebootWindowVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestRebootWindow._({required this.rawValue, required this.rebootWindow,
required this.postTerminalConfigurationsConfigurationRequestRebootWindowVariant2,});
  factory PostTerminalConfigurationsConfigurationRequestRebootWindow.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestRebootWindow._(
    rawValue: Omittable(json),
    rebootWindow: parseAnyOfVariant<RebootWindow>(json, (value) => RebootWindow.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestRebootWindowVariant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RebootWindow> rebootWindow;
final Omittable<PostTerminalConfigurationsConfigurationRequestRebootWindowVariant2> postTerminalConfigurationsConfigurationRequestRebootWindowVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => rebootWindow.isPresent || postTerminalConfigurationsConfigurationRequestRebootWindowVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rebootWindow.isPresent) rebootWindow.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestRebootWindowVariant2.isPresent) postTerminalConfigurationsConfigurationRequestRebootWindowVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestRebootWindow && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestRebootWindow(${toJson()})';
}
