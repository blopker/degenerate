// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';/// A File ID representing an image to display on the reader
@immutable
final class TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen {
  const TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen({this.string = const Omittable.absent(),
this.file = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen._({required this.rawValue, required this.string,
required this.file,});
  factory TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen.fromJson(Object? json) => TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
file: parseAnyOfVariant<File>(json, (value) => File.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<File> file;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || file.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (file.isPresent) file.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen(${toJson()})';
}
