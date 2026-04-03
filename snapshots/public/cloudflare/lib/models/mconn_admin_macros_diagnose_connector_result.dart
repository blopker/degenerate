// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_connector.dart';import 'mconn_admin_device.dart';import 'mconn_admin_site.dart';@immutable final class MconnAdminMacrosDiagnoseConnectorResult {const MconnAdminMacrosDiagnoseConnectorResult({this.connector, this.device, this.site, });

factory MconnAdminMacrosDiagnoseConnectorResult.fromJson(Map<String, dynamic> json) { return MconnAdminMacrosDiagnoseConnectorResult(
  connector: json['connector'] != null ? MconnAdminConnector.fromJson(json['connector'] as Map<String, dynamic>) : null,
  device: json['device'] != null ? MconnAdminDevice.fromJson(json['device'] as Map<String, dynamic>) : null,
  site: json['site'] != null ? MconnAdminSite.fromJson(json['site'] as Map<String, dynamic>) : null,
); }

final MconnAdminConnector? connector;

final MconnAdminDevice? device;

final MconnAdminSite? site;

Map<String, dynamic> toJson() { return {
  if (connector != null) 'connector': connector?.toJson(),
  if (device != null) 'device': device?.toJson(),
  if (site != null) 'site': site?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'connector', 'device', 'site'}.contains(key)); } 
MconnAdminMacrosDiagnoseConnectorResult copyWith({MconnAdminConnector Function()? connector, MconnAdminDevice Function()? device, MconnAdminSite Function()? site, }) { return MconnAdminMacrosDiagnoseConnectorResult(
  connector: connector != null ? connector() : this.connector,
  device: device != null ? device() : this.device,
  site: site != null ? site() : this.site,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminMacrosDiagnoseConnectorResult &&
          connector == other.connector &&
          device == other.device &&
          site == other.site; } 
@override int get hashCode { return Object.hash(connector, device, site); } 
@override String toString() { return 'MconnAdminMacrosDiagnoseConnectorResult(connector: $connector, device: $device, site: $site)'; } 
 }
