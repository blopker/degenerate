// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityPatternType {const EmailSecurityPatternType._(this.value);

factory EmailSecurityPatternType.fromJson(String json) { return switch (json) {
  'EMAIL' => email,
  'DOMAIN' => domain,
  'IP' => ip,
  'UNKNOWN' => unknown,
  _ => EmailSecurityPatternType._(json),
}; }

static const EmailSecurityPatternType email = EmailSecurityPatternType._('EMAIL');

static const EmailSecurityPatternType domain = EmailSecurityPatternType._('DOMAIN');

static const EmailSecurityPatternType ip = EmailSecurityPatternType._('IP');

static const EmailSecurityPatternType unknown = EmailSecurityPatternType._('UNKNOWN');

static const List<EmailSecurityPatternType> values = [email, domain, ip, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityPatternType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityPatternType($value)'; } 
 }
