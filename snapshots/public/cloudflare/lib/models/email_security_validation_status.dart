// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityValidationStatus {const EmailSecurityValidationStatus._(this.value);

factory EmailSecurityValidationStatus.fromJson(String json) { return switch (json) {
  'pass' => pass,
  'neutral' => neutral,
  'fail' => fail,
  'error' => error,
  'none' => none,
  _ => EmailSecurityValidationStatus._(json),
}; }

static const EmailSecurityValidationStatus pass = EmailSecurityValidationStatus._('pass');

static const EmailSecurityValidationStatus neutral = EmailSecurityValidationStatus._('neutral');

static const EmailSecurityValidationStatus fail = EmailSecurityValidationStatus._('fail');

static const EmailSecurityValidationStatus error = EmailSecurityValidationStatus._('error');

static const EmailSecurityValidationStatus none = EmailSecurityValidationStatus._('none');

static const List<EmailSecurityValidationStatus> values = [pass, neutral, fail, error, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityValidationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityValidationStatus($value)'; } 
 }
