// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityMessageDeliveryMode {const EmailSecurityMessageDeliveryMode._(this.value);

factory EmailSecurityMessageDeliveryMode.fromJson(String json) { return switch (json) {
  'DIRECT' => direct,
  'BCC' => bcc,
  'JOURNAL' => journal,
  'REVIEW_SUBMISSION' => reviewSubmission,
  'DMARC_UNVERIFIED' => dmarcUnverified,
  'DMARC_FAILURE_REPORT' => dmarcFailureReport,
  'DMARC_AGGREGATE_REPORT' => dmarcAggregateReport,
  'THREAT_INTEL_SUBMISSION' => threatIntelSubmission,
  'SIMULATION_SUBMISSION' => simulationSubmission,
  'API' => api,
  'RETRO_SCAN' => retroScan,
  _ => EmailSecurityMessageDeliveryMode._(json),
}; }

static const EmailSecurityMessageDeliveryMode direct = EmailSecurityMessageDeliveryMode._('DIRECT');

static const EmailSecurityMessageDeliveryMode bcc = EmailSecurityMessageDeliveryMode._('BCC');

static const EmailSecurityMessageDeliveryMode journal = EmailSecurityMessageDeliveryMode._('JOURNAL');

static const EmailSecurityMessageDeliveryMode reviewSubmission = EmailSecurityMessageDeliveryMode._('REVIEW_SUBMISSION');

static const EmailSecurityMessageDeliveryMode dmarcUnverified = EmailSecurityMessageDeliveryMode._('DMARC_UNVERIFIED');

static const EmailSecurityMessageDeliveryMode dmarcFailureReport = EmailSecurityMessageDeliveryMode._('DMARC_FAILURE_REPORT');

static const EmailSecurityMessageDeliveryMode dmarcAggregateReport = EmailSecurityMessageDeliveryMode._('DMARC_AGGREGATE_REPORT');

static const EmailSecurityMessageDeliveryMode threatIntelSubmission = EmailSecurityMessageDeliveryMode._('THREAT_INTEL_SUBMISSION');

static const EmailSecurityMessageDeliveryMode simulationSubmission = EmailSecurityMessageDeliveryMode._('SIMULATION_SUBMISSION');

static const EmailSecurityMessageDeliveryMode api = EmailSecurityMessageDeliveryMode._('API');

static const EmailSecurityMessageDeliveryMode retroScan = EmailSecurityMessageDeliveryMode._('RETRO_SCAN');

static const List<EmailSecurityMessageDeliveryMode> values = [direct, bcc, journal, reviewSubmission, dmarcUnverified, dmarcFailureReport, dmarcAggregateReport, threatIntelSubmission, simulationSubmission, api, retroScan];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityMessageDeliveryMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityMessageDeliveryMode($value)'; } 
 }
