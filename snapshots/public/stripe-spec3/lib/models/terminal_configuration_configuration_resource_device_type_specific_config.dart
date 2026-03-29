// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'terminal_configuration_configuration_resource_device_type_specific_config_splashscreen.dart';/// 
final class TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig {const TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig({this.splashscreen});

factory TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig.fromJson(Map<String, dynamic> json) { return TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
); }

/// A File ID representing an image to display on the reader
final TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig copyWith({TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen Function()? splashscreen}) { return TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig(splashscreen: $splashscreen)'; } 
 }
