// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityDispositionLabel {const EmailSecurityDispositionLabel._(this.value);

factory EmailSecurityDispositionLabel.fromJson(String json) { return switch (json) {
  'MALICIOUS' => malicious,
  'MALICIOUS-BEC' => maliciousBec,
  'SUSPICIOUS' => suspicious,
  'SPOOF' => spoof,
  'SPAM' => spam,
  'BULK' => bulk,
  'ENCRYPTED' => encrypted,
  'EXTERNAL' => $external,
  'UNKNOWN' => unknown,
  'NONE' => none,
  _ => EmailSecurityDispositionLabel._(json),
}; }

static const EmailSecurityDispositionLabel malicious = EmailSecurityDispositionLabel._('MALICIOUS');

static const EmailSecurityDispositionLabel maliciousBec = EmailSecurityDispositionLabel._('MALICIOUS-BEC');

static const EmailSecurityDispositionLabel suspicious = EmailSecurityDispositionLabel._('SUSPICIOUS');

static const EmailSecurityDispositionLabel spoof = EmailSecurityDispositionLabel._('SPOOF');

static const EmailSecurityDispositionLabel spam = EmailSecurityDispositionLabel._('SPAM');

static const EmailSecurityDispositionLabel bulk = EmailSecurityDispositionLabel._('BULK');

static const EmailSecurityDispositionLabel encrypted = EmailSecurityDispositionLabel._('ENCRYPTED');

static const EmailSecurityDispositionLabel $external = EmailSecurityDispositionLabel._('EXTERNAL');

static const EmailSecurityDispositionLabel unknown = EmailSecurityDispositionLabel._('UNKNOWN');

static const EmailSecurityDispositionLabel none = EmailSecurityDispositionLabel._('NONE');

static const List<EmailSecurityDispositionLabel> values = [malicious, maliciousBec, suspicious, spoof, spam, bulk, encrypted, $external, unknown, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityDispositionLabel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityDispositionLabel($value)'; } 
 }
