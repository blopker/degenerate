// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_controller_connector_identity.dart';import 'mconn_controller_device_identity.dart';@immutable final class MconnControllerIdentifyEkCertResult {const MconnControllerIdentifyEkCertResult({this.connector, this.device, });

factory MconnControllerIdentifyEkCertResult.fromJson(Map<String, dynamic> json) { return MconnControllerIdentifyEkCertResult(
  connector: json['connector'] != null ? MconnControllerConnectorIdentity.fromJson(json['connector'] as Map<String, dynamic>) : null,
  device: json['device'] != null ? MconnControllerDeviceIdentity.fromJson(json['device'] as Map<String, dynamic>) : null,
); }

final MconnControllerConnectorIdentity? connector;

final MconnControllerDeviceIdentity? device;

Map<String, dynamic> toJson() { return {
  if (connector != null) 'connector': connector?.toJson(),
  if (device != null) 'device': device?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'connector', 'device'}.contains(key)); } 
MconnControllerIdentifyEkCertResult copyWith({MconnControllerConnectorIdentity Function()? connector, MconnControllerDeviceIdentity Function()? device, }) { return MconnControllerIdentifyEkCertResult(
  connector: connector != null ? connector() : this.connector,
  device: device != null ? device() : this.device,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerIdentifyEkCertResult &&
          connector == other.connector &&
          device == other.device; } 
@override int get hashCode { return Object.hash(connector, device); } 
@override String toString() { return 'MconnControllerIdentifyEkCertResult(connector: $connector, device: $device)'; } 
 }
