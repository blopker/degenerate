// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityListTrustedDomainsOrder {const EmailSecurityListTrustedDomainsOrder._(this.value);

factory EmailSecurityListTrustedDomainsOrder.fromJson(String json) { return switch (json) {
  'pattern' => pattern,
  'created_at' => createdAt,
  _ => EmailSecurityListTrustedDomainsOrder._(json),
}; }

static const EmailSecurityListTrustedDomainsOrder pattern = EmailSecurityListTrustedDomainsOrder._('pattern');

static const EmailSecurityListTrustedDomainsOrder createdAt = EmailSecurityListTrustedDomainsOrder._('created_at');

static const List<EmailSecurityListTrustedDomainsOrder> values = [pattern, createdAt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityListTrustedDomainsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityListTrustedDomainsOrder($value)'; } 
 }
