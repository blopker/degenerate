// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_config_request.dart';@immutable final class CloudflareTunnelConfigurationPutConfigurationRequest {const CloudflareTunnelConfigurationPutConfigurationRequest({this.config});

factory CloudflareTunnelConfigurationPutConfigurationRequest.fromJson(Map<String, dynamic> json) {return CloudflareTunnelConfigurationPutConfigurationRequest(
  config: json['config'] != null ? TunnelConfigRequest.fromJson(json['config'] as Map<String, dynamic>) : null,
);}

final TunnelConfigRequest? config;

Map<String, dynamic> toJson() {return {
  if (config != null) 'config': config?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'config'}.contains(key));}
CloudflareTunnelConfigurationPutConfigurationRequest copyWith({TunnelConfigRequest? Function()? config}) {return CloudflareTunnelConfigurationPutConfigurationRequest(
  config: config != null ? config() : this.config,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is CloudflareTunnelConfigurationPutConfigurationRequest &&
          config == other.config;}
@override int get hashCode {return config.hashCode;}
@override String toString() {return 'CloudflareTunnelConfigurationPutConfigurationRequest(config: $config)';}
}
