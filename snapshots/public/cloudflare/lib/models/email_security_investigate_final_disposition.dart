// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityInvestigateFinalDisposition {const EmailSecurityInvestigateFinalDisposition._(this.value);

factory EmailSecurityInvestigateFinalDisposition.fromJson(String json) { return switch (json) {
  'MALICIOUS' => malicious,
  'SUSPICIOUS' => suspicious,
  'SPOOF' => spoof,
  'SPAM' => spam,
  'BULK' => bulk,
  'NONE' => none,
  _ => EmailSecurityInvestigateFinalDisposition._(json),
}; }

static const EmailSecurityInvestigateFinalDisposition malicious = EmailSecurityInvestigateFinalDisposition._('MALICIOUS');

static const EmailSecurityInvestigateFinalDisposition suspicious = EmailSecurityInvestigateFinalDisposition._('SUSPICIOUS');

static const EmailSecurityInvestigateFinalDisposition spoof = EmailSecurityInvestigateFinalDisposition._('SPOOF');

static const EmailSecurityInvestigateFinalDisposition spam = EmailSecurityInvestigateFinalDisposition._('SPAM');

static const EmailSecurityInvestigateFinalDisposition bulk = EmailSecurityInvestigateFinalDisposition._('BULK');

static const EmailSecurityInvestigateFinalDisposition none = EmailSecurityInvestigateFinalDisposition._('NONE');

static const List<EmailSecurityInvestigateFinalDisposition> values = [malicious, suspicious, spoof, spam, bulk, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityInvestigateFinalDisposition && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityInvestigateFinalDisposition($value)'; } 
 }
