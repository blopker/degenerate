// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_activity_log_settings.dart';import 'zero_trust_gateway_anti_virus_settings.dart';import 'zero_trust_gateway_block_page_settings.dart';import 'zero_trust_gateway_body_scanning_settings.dart';import 'zero_trust_gateway_browser_isolation_settings.dart';import 'zero_trust_gateway_certificate_settings.dart';import 'zero_trust_gateway_custom_certificate_settings.dart';import 'zero_trust_gateway_extended_email_matching.dart';import 'zero_trust_gateway_fips_settings.dart';import 'zero_trust_gateway_host_selector_settings.dart';import 'zero_trust_gateway_inspection_settings.dart';import 'zero_trust_gateway_protocol_detection.dart';import 'zero_trust_gateway_sandbox.dart';import 'zero_trust_gateway_tls_settings.dart';/// Specify account settings.
@immutable final class ZeroTrustGatewayGatewayAccountSettingsSettings {const ZeroTrustGatewayGatewayAccountSettingsSettings({this.activityLog, this.antivirus, this.blockPage, this.bodyScanning, this.browserIsolation, this.certificate, this.customCertificate, this.extendedEmailMatching, this.fips, this.hostSelector, this.inspection, this.protocolDetection, this.sandbox, this.tlsDecrypt, });

factory ZeroTrustGatewayGatewayAccountSettingsSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccountSettingsSettings(
  activityLog: json['activity_log'] != null ? ZeroTrustGatewayActivityLogSettings.fromJson(json['activity_log'] as Map<String, dynamic>) : null,
  antivirus: json['antivirus'] != null ? ZeroTrustGatewayAntiVirusSettings.fromJson(json['antivirus'] as Map<String, dynamic>) : null,
  blockPage: json['block_page'] != null ? ZeroTrustGatewayBlockPageSettings.fromJson(json['block_page'] as Map<String, dynamic>) : null,
  bodyScanning: json['body_scanning'] != null ? ZeroTrustGatewayBodyScanningSettings.fromJson(json['body_scanning'] as Map<String, dynamic>) : null,
  browserIsolation: json['browser_isolation'] != null ? ZeroTrustGatewayBrowserIsolationSettings.fromJson(json['browser_isolation'] as Map<String, dynamic>) : null,
  certificate: json['certificate'] != null ? ZeroTrustGatewayCertificateSettings.fromJson(json['certificate'] as Map<String, dynamic>) : null,
  customCertificate: json['custom_certificate'] != null ? ZeroTrustGatewayCustomCertificateSettings.fromJson(json['custom_certificate'] as Map<String, dynamic>) : null,
  extendedEmailMatching: json['extended_email_matching'] != null ? ZeroTrustGatewayExtendedEmailMatching.fromJson(json['extended_email_matching'] as Map<String, dynamic>) : null,
  fips: json['fips'] != null ? ZeroTrustGatewayFipsSettings.fromJson(json['fips'] as Map<String, dynamic>) : null,
  hostSelector: json['host_selector'] != null ? ZeroTrustGatewayHostSelectorSettings.fromJson(json['host_selector'] as Map<String, dynamic>) : null,
  inspection: json['inspection'] != null ? ZeroTrustGatewayInspectionSettings.fromJson(json['inspection'] as Map<String, dynamic>) : null,
  protocolDetection: json['protocol_detection'] != null ? ZeroTrustGatewayProtocolDetection.fromJson(json['protocol_detection'] as Map<String, dynamic>) : null,
  sandbox: json['sandbox'] != null ? ZeroTrustGatewaySandbox.fromJson(json['sandbox'] as Map<String, dynamic>) : null,
  tlsDecrypt: json['tls_decrypt'] != null ? ZeroTrustGatewayTlsSettings.fromJson(json['tls_decrypt'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayActivityLogSettings? activityLog;

final ZeroTrustGatewayAntiVirusSettings? antivirus;

final ZeroTrustGatewayBlockPageSettings? blockPage;

final ZeroTrustGatewayBodyScanningSettings? bodyScanning;

final ZeroTrustGatewayBrowserIsolationSettings? browserIsolation;

final ZeroTrustGatewayCertificateSettings? certificate;

final ZeroTrustGatewayCustomCertificateSettings? customCertificate;

final ZeroTrustGatewayExtendedEmailMatching? extendedEmailMatching;

final ZeroTrustGatewayFipsSettings? fips;

final ZeroTrustGatewayHostSelectorSettings? hostSelector;

final ZeroTrustGatewayInspectionSettings? inspection;

final ZeroTrustGatewayProtocolDetection? protocolDetection;

final ZeroTrustGatewaySandbox? sandbox;

final ZeroTrustGatewayTlsSettings? tlsDecrypt;

Map<String, dynamic> toJson() { return {
  if (activityLog != null) 'activity_log': activityLog?.toJson(),
  if (antivirus != null) 'antivirus': antivirus?.toJson(),
  if (blockPage != null) 'block_page': blockPage?.toJson(),
  if (bodyScanning != null) 'body_scanning': bodyScanning?.toJson(),
  if (browserIsolation != null) 'browser_isolation': browserIsolation?.toJson(),
  if (certificate != null) 'certificate': certificate?.toJson(),
  if (customCertificate != null) 'custom_certificate': customCertificate?.toJson(),
  if (extendedEmailMatching != null) 'extended_email_matching': extendedEmailMatching?.toJson(),
  if (fips != null) 'fips': fips?.toJson(),
  if (hostSelector != null) 'host_selector': hostSelector?.toJson(),
  if (inspection != null) 'inspection': inspection?.toJson(),
  if (protocolDetection != null) 'protocol_detection': protocolDetection?.toJson(),
  if (sandbox != null) 'sandbox': sandbox?.toJson(),
  if (tlsDecrypt != null) 'tls_decrypt': tlsDecrypt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'activity_log', 'antivirus', 'block_page', 'body_scanning', 'browser_isolation', 'certificate', 'custom_certificate', 'extended_email_matching', 'fips', 'host_selector', 'inspection', 'protocol_detection', 'sandbox', 'tls_decrypt'}.contains(key)); } 
ZeroTrustGatewayGatewayAccountSettingsSettings copyWith({ZeroTrustGatewayActivityLogSettings Function()? activityLog, ZeroTrustGatewayAntiVirusSettings Function()? antivirus, ZeroTrustGatewayBlockPageSettings Function()? blockPage, ZeroTrustGatewayBodyScanningSettings Function()? bodyScanning, ZeroTrustGatewayBrowserIsolationSettings Function()? browserIsolation, ZeroTrustGatewayCertificateSettings Function()? certificate, ZeroTrustGatewayCustomCertificateSettings Function()? customCertificate, ZeroTrustGatewayExtendedEmailMatching Function()? extendedEmailMatching, ZeroTrustGatewayFipsSettings Function()? fips, ZeroTrustGatewayHostSelectorSettings Function()? hostSelector, ZeroTrustGatewayInspectionSettings Function()? inspection, ZeroTrustGatewayProtocolDetection Function()? protocolDetection, ZeroTrustGatewaySandbox Function()? sandbox, ZeroTrustGatewayTlsSettings Function()? tlsDecrypt, }) { return ZeroTrustGatewayGatewayAccountSettingsSettings(
  activityLog: activityLog != null ? activityLog() : this.activityLog,
  antivirus: antivirus != null ? antivirus() : this.antivirus,
  blockPage: blockPage != null ? blockPage() : this.blockPage,
  bodyScanning: bodyScanning != null ? bodyScanning() : this.bodyScanning,
  browserIsolation: browserIsolation != null ? browserIsolation() : this.browserIsolation,
  certificate: certificate != null ? certificate() : this.certificate,
  customCertificate: customCertificate != null ? customCertificate() : this.customCertificate,
  extendedEmailMatching: extendedEmailMatching != null ? extendedEmailMatching() : this.extendedEmailMatching,
  fips: fips != null ? fips() : this.fips,
  hostSelector: hostSelector != null ? hostSelector() : this.hostSelector,
  inspection: inspection != null ? inspection() : this.inspection,
  protocolDetection: protocolDetection != null ? protocolDetection() : this.protocolDetection,
  sandbox: sandbox != null ? sandbox() : this.sandbox,
  tlsDecrypt: tlsDecrypt != null ? tlsDecrypt() : this.tlsDecrypt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountSettingsSettings &&
          activityLog == other.activityLog &&
          antivirus == other.antivirus &&
          blockPage == other.blockPage &&
          bodyScanning == other.bodyScanning &&
          browserIsolation == other.browserIsolation &&
          certificate == other.certificate &&
          customCertificate == other.customCertificate &&
          extendedEmailMatching == other.extendedEmailMatching &&
          fips == other.fips &&
          hostSelector == other.hostSelector &&
          inspection == other.inspection &&
          protocolDetection == other.protocolDetection &&
          sandbox == other.sandbox &&
          tlsDecrypt == other.tlsDecrypt; } 
@override int get hashCode { return Object.hash(activityLog, antivirus, blockPage, bodyScanning, browserIsolation, certificate, customCertificate, extendedEmailMatching, fips, hostSelector, inspection, protocolDetection, sandbox, tlsDecrypt); } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccountSettingsSettings(activityLog: $activityLog, antivirus: $antivirus, blockPage: $blockPage, bodyScanning: $bodyScanning, browserIsolation: $browserIsolation, certificate: $certificate, customCertificate: $customCertificate, extendedEmailMatching: $extendedEmailMatching, fips: $fips, hostSelector: $hostSelector, inspection: $inspection, protocolDetection: $protocolDetection, sandbox: $sandbox, tlsDecrypt: $tlsDecrypt)'; } 
 }
