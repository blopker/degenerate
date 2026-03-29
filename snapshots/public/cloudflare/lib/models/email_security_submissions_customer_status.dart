// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecuritySubmissionsCustomerStatus {const EmailSecuritySubmissionsCustomerStatus._(this.value);

factory EmailSecuritySubmissionsCustomerStatus.fromJson(String json) { return switch (json) {
  'escalated' => escalated,
  'reviewed' => reviewed,
  'unreviewed' => unreviewed,
  _ => EmailSecuritySubmissionsCustomerStatus._(json),
}; }

static const EmailSecuritySubmissionsCustomerStatus escalated = EmailSecuritySubmissionsCustomerStatus._('escalated');

static const EmailSecuritySubmissionsCustomerStatus reviewed = EmailSecuritySubmissionsCustomerStatus._('reviewed');

static const EmailSecuritySubmissionsCustomerStatus unreviewed = EmailSecuritySubmissionsCustomerStatus._('unreviewed');

static const List<EmailSecuritySubmissionsCustomerStatus> values = [escalated, reviewed, unreviewed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecuritySubmissionsCustomerStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecuritySubmissionsCustomerStatus($value)'; } 
 }
