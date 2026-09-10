// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_activity_log_settings.dart';import 'zero_trust_gateway_anti_virus_settings.dart';import 'zero_trust_gateway_block_page_settings_request.dart';import 'zero_trust_gateway_body_scanning_settings.dart';import 'zero_trust_gateway_browser_isolation_settings.dart';import 'zero_trust_gateway_certificate_settings.dart';import 'zero_trust_gateway_custom_certificate_settings_request.dart';import 'zero_trust_gateway_extended_email_matching_request.dart';import 'zero_trust_gateway_fips_settings.dart';import 'zero_trust_gateway_host_selector_settings.dart';import 'zero_trust_gateway_inspection_settings.dart';import 'zero_trust_gateway_protocol_detection.dart';import 'zero_trust_gateway_sandbox.dart';import 'zero_trust_gateway_tls_settings.dart';/// Specify account settings.
@immutable final class ZeroTrustGatewayGatewayAccountSettingsRequestSettings {const ZeroTrustGatewayGatewayAccountSettingsRequestSettings({this.activityLog = const Omittable.absent(), this.antivirus = const Omittable.absent(), this.blockPage = const Omittable.absent(), this.bodyScanning = const Omittable.absent(), this.browserIsolation = const Omittable.absent(), this.certificate = const Omittable.absent(), this.customCertificate = const Omittable.absent(), this.extendedEmailMatching = const Omittable.absent(), this.fips = const Omittable.absent(), this.hostSelector = const Omittable.absent(), this.inspection = const Omittable.absent(), this.protocolDetection = const Omittable.absent(), this.sandbox = const Omittable.absent(), this.tlsDecrypt = const Omittable.absent(), });

factory ZeroTrustGatewayGatewayAccountSettingsRequestSettings.fromJson(Map<String, dynamic> json) {return ZeroTrustGatewayGatewayAccountSettingsRequestSettings(
  activityLog: json.containsKey('activity_log') ? Omittable(json['activity_log'] != null ? ZeroTrustGatewayActivityLogSettings.fromJson(json['activity_log'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  antivirus: json.containsKey('antivirus') ? Omittable(json['antivirus'] != null ? ZeroTrustGatewayAntiVirusSettings.fromJson(json['antivirus'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  blockPage: json.containsKey('block_page') ? Omittable(json['block_page'] != null ? ZeroTrustGatewayBlockPageSettingsRequest.fromJson(json['block_page'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  bodyScanning: json.containsKey('body_scanning') ? Omittable(json['body_scanning'] != null ? ZeroTrustGatewayBodyScanningSettings.fromJson(json['body_scanning'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  browserIsolation: json.containsKey('browser_isolation') ? Omittable(json['browser_isolation'] != null ? ZeroTrustGatewayBrowserIsolationSettings.fromJson(json['browser_isolation'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  certificate: json.containsKey('certificate') ? Omittable(json['certificate'] != null ? ZeroTrustGatewayCertificateSettings.fromJson(json['certificate'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  customCertificate: json.containsKey('custom_certificate') ? Omittable(json['custom_certificate'] != null ? ZeroTrustGatewayCustomCertificateSettingsRequest.fromJson(json['custom_certificate'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  extendedEmailMatching: json.containsKey('extended_email_matching') ? Omittable(json['extended_email_matching'] != null ? ZeroTrustGatewayExtendedEmailMatchingRequest.fromJson(json['extended_email_matching'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  fips: json.containsKey('fips') ? Omittable(json['fips'] != null ? ZeroTrustGatewayFipsSettings.fromJson(json['fips'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  hostSelector: json.containsKey('host_selector') ? Omittable(json['host_selector'] != null ? ZeroTrustGatewayHostSelectorSettings.fromJson(json['host_selector'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  inspection: json.containsKey('inspection') ? Omittable(json['inspection'] != null ? ZeroTrustGatewayInspectionSettings.fromJson(json['inspection'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  protocolDetection: json.containsKey('protocol_detection') ? Omittable(json['protocol_detection'] != null ? ZeroTrustGatewayProtocolDetection.fromJson(json['protocol_detection'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  sandbox: json.containsKey('sandbox') ? Omittable(json['sandbox'] != null ? ZeroTrustGatewaySandbox.fromJson(json['sandbox'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  tlsDecrypt: json.containsKey('tls_decrypt') ? Omittable(json['tls_decrypt'] != null ? ZeroTrustGatewayTlsSettings.fromJson(json['tls_decrypt'] as Map<String, dynamic>) : null) : const Omittable.absent(),
);}

final Omittable<ZeroTrustGatewayActivityLogSettings?> activityLog;

final Omittable<ZeroTrustGatewayAntiVirusSettings?> antivirus;

final Omittable<ZeroTrustGatewayBlockPageSettingsRequest?> blockPage;

final Omittable<ZeroTrustGatewayBodyScanningSettings?> bodyScanning;

final Omittable<ZeroTrustGatewayBrowserIsolationSettings?> browserIsolation;

final Omittable<ZeroTrustGatewayCertificateSettings?> certificate;

final Omittable<ZeroTrustGatewayCustomCertificateSettingsRequest?> customCertificate;

final Omittable<ZeroTrustGatewayExtendedEmailMatchingRequest?> extendedEmailMatching;

final Omittable<ZeroTrustGatewayFipsSettings?> fips;

final Omittable<ZeroTrustGatewayHostSelectorSettings?> hostSelector;

final Omittable<ZeroTrustGatewayInspectionSettings?> inspection;

final Omittable<ZeroTrustGatewayProtocolDetection?> protocolDetection;

final Omittable<ZeroTrustGatewaySandbox?> sandbox;

final Omittable<ZeroTrustGatewayTlsSettings?> tlsDecrypt;

Map<String, dynamic> toJson() {return {
  if (activityLog.isPresent) 'activity_log': activityLog.value?.toJson(),
  if (antivirus.isPresent) 'antivirus': antivirus.value?.toJson(),
  if (blockPage.isPresent) 'block_page': blockPage.value?.toJson(),
  if (bodyScanning.isPresent) 'body_scanning': bodyScanning.value?.toJson(),
  if (browserIsolation.isPresent) 'browser_isolation': browserIsolation.value?.toJson(),
  if (certificate.isPresent) 'certificate': certificate.value?.toJson(),
  if (customCertificate.isPresent) 'custom_certificate': customCertificate.value?.toJson(),
  if (extendedEmailMatching.isPresent) 'extended_email_matching': extendedEmailMatching.value?.toJson(),
  if (fips.isPresent) 'fips': fips.value?.toJson(),
  if (hostSelector.isPresent) 'host_selector': hostSelector.value?.toJson(),
  if (inspection.isPresent) 'inspection': inspection.value?.toJson(),
  if (protocolDetection.isPresent) 'protocol_detection': protocolDetection.value?.toJson(),
  if (sandbox.isPresent) 'sandbox': sandbox.value?.toJson(),
  if (tlsDecrypt.isPresent) 'tls_decrypt': tlsDecrypt.value?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'activity_log', 'antivirus', 'block_page', 'body_scanning', 'browser_isolation', 'certificate', 'custom_certificate', 'extended_email_matching', 'fips', 'host_selector', 'inspection', 'protocol_detection', 'sandbox', 'tls_decrypt'}.contains(key));}
ZeroTrustGatewayGatewayAccountSettingsRequestSettings copyWith({Omittable<ZeroTrustGatewayActivityLogSettings?>? activityLog, Omittable<ZeroTrustGatewayAntiVirusSettings?>? antivirus, Omittable<ZeroTrustGatewayBlockPageSettingsRequest?>? blockPage, Omittable<ZeroTrustGatewayBodyScanningSettings?>? bodyScanning, Omittable<ZeroTrustGatewayBrowserIsolationSettings?>? browserIsolation, Omittable<ZeroTrustGatewayCertificateSettings?>? certificate, Omittable<ZeroTrustGatewayCustomCertificateSettingsRequest?>? customCertificate, Omittable<ZeroTrustGatewayExtendedEmailMatchingRequest?>? extendedEmailMatching, Omittable<ZeroTrustGatewayFipsSettings?>? fips, Omittable<ZeroTrustGatewayHostSelectorSettings?>? hostSelector, Omittable<ZeroTrustGatewayInspectionSettings?>? inspection, Omittable<ZeroTrustGatewayProtocolDetection?>? protocolDetection, Omittable<ZeroTrustGatewaySandbox?>? sandbox, Omittable<ZeroTrustGatewayTlsSettings?>? tlsDecrypt, }) {return ZeroTrustGatewayGatewayAccountSettingsRequestSettings(
  activityLog: activityLog ?? this.activityLog,
  antivirus: antivirus ?? this.antivirus,
  blockPage: blockPage ?? this.blockPage,
  bodyScanning: bodyScanning ?? this.bodyScanning,
  browserIsolation: browserIsolation ?? this.browserIsolation,
  certificate: certificate ?? this.certificate,
  customCertificate: customCertificate ?? this.customCertificate,
  extendedEmailMatching: extendedEmailMatching ?? this.extendedEmailMatching,
  fips: fips ?? this.fips,
  hostSelector: hostSelector ?? this.hostSelector,
  inspection: inspection ?? this.inspection,
  protocolDetection: protocolDetection ?? this.protocolDetection,
  sandbox: sandbox ?? this.sandbox,
  tlsDecrypt: tlsDecrypt ?? this.tlsDecrypt,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountSettingsRequestSettings &&
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
          tlsDecrypt == other.tlsDecrypt;}
@override int get hashCode {return Object.hash(activityLog, antivirus, blockPage, bodyScanning, browserIsolation, certificate, customCertificate, extendedEmailMatching, fips, hostSelector, inspection, protocolDetection, sandbox, tlsDecrypt);}
@override String toString() {return 'ZeroTrustGatewayGatewayAccountSettingsRequestSettings(activityLog: $activityLog, antivirus: $antivirus, blockPage: $blockPage, bodyScanning: $bodyScanning, browserIsolation: $browserIsolation, certificate: $certificate, customCertificate: $customCertificate, extendedEmailMatching: $extendedEmailMatching, fips: $fips, hostSelector: $hostSelector, inspection: $inspection, protocolDetection: $protocolDetection, sandbox: $sandbox, tlsDecrypt: $tlsDecrypt)';}
}
