// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_connector.dart';@immutable final class MconnAdminMacrosProvisionPhysicalConnectorResult {const MconnAdminMacrosProvisionPhysicalConnectorResult({required this.connector});

factory MconnAdminMacrosProvisionPhysicalConnectorResult.fromJson(Map<String, dynamic> json) { return MconnAdminMacrosProvisionPhysicalConnectorResult(
  connector: MconnAdminConnector.fromJson(json['connector'] as Map<String, dynamic>),
); }

final MconnAdminConnector connector;

Map<String, dynamic> toJson() { return {
  'connector': connector.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('connector'); } 
MconnAdminMacrosProvisionPhysicalConnectorResult copyWith({MconnAdminConnector? connector}) { return MconnAdminMacrosProvisionPhysicalConnectorResult(
  connector: connector ?? this.connector,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminMacrosProvisionPhysicalConnectorResult &&
          connector == other.connector; } 
@override int get hashCode { return connector.hashCode; } 
@override String toString() { return 'MconnAdminMacrosProvisionPhysicalConnectorResult(connector: $connector)'; } 
 }
