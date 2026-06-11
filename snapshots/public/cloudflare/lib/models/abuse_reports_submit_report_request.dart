// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'abuse_reports_csam_report.dart';import 'abuse_reports_dmca_report.dart';import 'abuse_reports_general_report.dart';import 'abuse_reports_ncsei_report.dart';import 'abuse_reports_phishing_report.dart';import 'abuse_reports_registrar_whois_report.dart';import 'abuse_reports_threat_report.dart';import 'abuse_reports_trademark_report.dart';sealed class AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequest();

/// Deserialize from JSON, dispatching on the `act` discriminator.
factory AbuseReportsSubmitReportRequest.fromJson(Map<String, dynamic> json) { return switch (json['act']) {
  'abuse_children' => AbuseReportsSubmitReportRequestAbuseChildren.fromJson(json),
  'abuse_dmca' => AbuseReportsSubmitReportRequestAbuseDmca.fromJson(json),
  'abuse_general' => AbuseReportsSubmitReportRequestAbuseGeneral.fromJson(json),
  'abuse_ncsei' => AbuseReportsSubmitReportRequestAbuseNcsei.fromJson(json),
  'abuse_phishing' => AbuseReportsSubmitReportRequestAbusePhishing.fromJson(json),
  'abuse_registrar_whois' => AbuseReportsSubmitReportRequestAbuseRegistrarWhois.fromJson(json),
  'abuse_threat' => AbuseReportsSubmitReportRequestAbuseThreat.fromJson(json),
  'abuse_trademark' => AbuseReportsSubmitReportRequestAbuseTrademark.fromJson(json),
  _ => AbuseReportsSubmitReportRequest$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get act;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is AbuseReportsSubmitReportRequest$Unknown; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbuseChildren extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseChildren(this.abuseReportsCsamReport);

factory AbuseReportsSubmitReportRequestAbuseChildren.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseChildren(AbuseReportsCsamReport.fromJson(json)); }

final AbuseReportsCsamReport abuseReportsCsamReport;

@override String get act { return 'abuse_children'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsCsamReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseChildren && abuseReportsCsamReport == other.abuseReportsCsamReport; } 
@override int get hashCode { return abuseReportsCsamReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseChildren(abuseReportsCsamReport: $abuseReportsCsamReport)'; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbuseDmca extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseDmca(this.abuseReportsDmcaReport);

factory AbuseReportsSubmitReportRequestAbuseDmca.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseDmca(AbuseReportsDmcaReport.fromJson(json)); }

final AbuseReportsDmcaReport abuseReportsDmcaReport;

@override String get act { return 'abuse_dmca'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsDmcaReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseDmca && abuseReportsDmcaReport == other.abuseReportsDmcaReport; } 
@override int get hashCode { return abuseReportsDmcaReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseDmca(abuseReportsDmcaReport: $abuseReportsDmcaReport)'; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbuseGeneral extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseGeneral(this.abuseReportsGeneralReport);

factory AbuseReportsSubmitReportRequestAbuseGeneral.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseGeneral(AbuseReportsGeneralReport.fromJson(json)); }

final AbuseReportsGeneralReport abuseReportsGeneralReport;

@override String get act { return 'abuse_general'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsGeneralReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseGeneral && abuseReportsGeneralReport == other.abuseReportsGeneralReport; } 
@override int get hashCode { return abuseReportsGeneralReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseGeneral(abuseReportsGeneralReport: $abuseReportsGeneralReport)'; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbuseNcsei extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseNcsei(this.abuseReportsNcseiReport);

factory AbuseReportsSubmitReportRequestAbuseNcsei.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseNcsei(AbuseReportsNcseiReport.fromJson(json)); }

final AbuseReportsNcseiReport abuseReportsNcseiReport;

@override String get act { return 'abuse_ncsei'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsNcseiReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseNcsei && abuseReportsNcseiReport == other.abuseReportsNcseiReport; } 
@override int get hashCode { return abuseReportsNcseiReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseNcsei(abuseReportsNcseiReport: $abuseReportsNcseiReport)'; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbusePhishing extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbusePhishing(this.abuseReportsPhishingReport);

factory AbuseReportsSubmitReportRequestAbusePhishing.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbusePhishing(AbuseReportsPhishingReport.fromJson(json)); }

final AbuseReportsPhishingReport abuseReportsPhishingReport;

@override String get act { return 'abuse_phishing'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsPhishingReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbusePhishing && abuseReportsPhishingReport == other.abuseReportsPhishingReport; } 
@override int get hashCode { return abuseReportsPhishingReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbusePhishing(abuseReportsPhishingReport: $abuseReportsPhishingReport)'; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbuseRegistrarWhois extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseRegistrarWhois(this.abuseReportsRegistrarWhoisReport);

factory AbuseReportsSubmitReportRequestAbuseRegistrarWhois.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseRegistrarWhois(AbuseReportsRegistrarWhoisReport.fromJson(json)); }

final AbuseReportsRegistrarWhoisReport abuseReportsRegistrarWhoisReport;

@override String get act { return 'abuse_registrar_whois'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsRegistrarWhoisReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseRegistrarWhois && abuseReportsRegistrarWhoisReport == other.abuseReportsRegistrarWhoisReport; } 
@override int get hashCode { return abuseReportsRegistrarWhoisReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseRegistrarWhois(abuseReportsRegistrarWhoisReport: $abuseReportsRegistrarWhoisReport)'; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbuseThreat extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseThreat(this.abuseReportsThreatReport);

factory AbuseReportsSubmitReportRequestAbuseThreat.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseThreat(AbuseReportsThreatReport.fromJson(json)); }

final AbuseReportsThreatReport abuseReportsThreatReport;

@override String get act { return 'abuse_threat'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsThreatReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseThreat && abuseReportsThreatReport == other.abuseReportsThreatReport; } 
@override int get hashCode { return abuseReportsThreatReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseThreat(abuseReportsThreatReport: $abuseReportsThreatReport)'; } 
 }
@immutable final class AbuseReportsSubmitReportRequestAbuseTrademark extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseTrademark(this.abuseReportsTrademarkReport);

factory AbuseReportsSubmitReportRequestAbuseTrademark.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseTrademark(AbuseReportsTrademarkReport.fromJson(json)); }

final AbuseReportsTrademarkReport abuseReportsTrademarkReport;

@override String get act { return 'abuse_trademark'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsTrademarkReport.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseTrademark && abuseReportsTrademarkReport == other.abuseReportsTrademarkReport; } 
@override int get hashCode { return abuseReportsTrademarkReport.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseTrademark(abuseReportsTrademarkReport: $abuseReportsTrademarkReport)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class AbuseReportsSubmitReportRequest$Unknown extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequest$Unknown(this.json);

final Map<String, dynamic> json;

@override String get act { return json['act'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequest$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequest.unknown($json)'; } 
 }
