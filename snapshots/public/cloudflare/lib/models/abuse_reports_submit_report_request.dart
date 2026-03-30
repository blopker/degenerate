// GENERATED CODE - DO NOT MODIFY BY HAND

import 'abuse_reports_base_report_fields.dart';sealed class AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequest();

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
final class AbuseReportsSubmitReportRequestAbuseChildren extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseChildren(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbuseChildren.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseChildren(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_children'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseChildren && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseChildren(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
final class AbuseReportsSubmitReportRequestAbuseDmca extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseDmca(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbuseDmca.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseDmca(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_dmca'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseDmca && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseDmca(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
final class AbuseReportsSubmitReportRequestAbuseGeneral extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseGeneral(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbuseGeneral.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseGeneral(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_general'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseGeneral && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseGeneral(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
final class AbuseReportsSubmitReportRequestAbuseNcsei extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseNcsei(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbuseNcsei.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseNcsei(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_ncsei'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseNcsei && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseNcsei(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
final class AbuseReportsSubmitReportRequestAbusePhishing extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbusePhishing(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbusePhishing.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbusePhishing(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_phishing'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbusePhishing && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbusePhishing(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
final class AbuseReportsSubmitReportRequestAbuseRegistrarWhois extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseRegistrarWhois(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbuseRegistrarWhois.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseRegistrarWhois(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_registrar_whois'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseRegistrarWhois && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseRegistrarWhois(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
final class AbuseReportsSubmitReportRequestAbuseThreat extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseThreat(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbuseThreat.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseThreat(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_threat'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseThreat && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseThreat(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
final class AbuseReportsSubmitReportRequestAbuseTrademark extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequestAbuseTrademark(this.abuseReportsBaseReportFields);

factory AbuseReportsSubmitReportRequestAbuseTrademark.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportRequestAbuseTrademark(AbuseReportsBaseReportFields.fromJson(json)); }

final AbuseReportsBaseReportFields abuseReportsBaseReportFields;

@override String get act { return 'abuse_trademark'; } 
@override Map<String, dynamic> toJson() { return {...abuseReportsBaseReportFields.toJson(), 'act': act}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequestAbuseTrademark && abuseReportsBaseReportFields == other.abuseReportsBaseReportFields; } 
@override int get hashCode { return abuseReportsBaseReportFields.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequestAbuseTrademark(abuseReportsBaseReportFields: $abuseReportsBaseReportFields)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class AbuseReportsSubmitReportRequest$Unknown extends AbuseReportsSubmitReportRequest {const AbuseReportsSubmitReportRequest$Unknown(this.json);

final Map<String, dynamic> json;

@override String get act { return json['act'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsSubmitReportRequest$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportRequest.unknown($json)'; } 
 }
