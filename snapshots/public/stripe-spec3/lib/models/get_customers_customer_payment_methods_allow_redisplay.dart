// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetCustomersCustomerPaymentMethodsAllowRedisplay {const GetCustomersCustomerPaymentMethodsAllowRedisplay._(this.value);

factory GetCustomersCustomerPaymentMethodsAllowRedisplay.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => GetCustomersCustomerPaymentMethodsAllowRedisplay._(json),
}; }

static const GetCustomersCustomerPaymentMethodsAllowRedisplay always = GetCustomersCustomerPaymentMethodsAllowRedisplay._('always');

static const GetCustomersCustomerPaymentMethodsAllowRedisplay limited = GetCustomersCustomerPaymentMethodsAllowRedisplay._('limited');

static const GetCustomersCustomerPaymentMethodsAllowRedisplay unspecified = GetCustomersCustomerPaymentMethodsAllowRedisplay._('unspecified');

static const List<GetCustomersCustomerPaymentMethodsAllowRedisplay> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCustomersCustomerPaymentMethodsAllowRedisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCustomersCustomerPaymentMethodsAllowRedisplay($value)'; } 
 }
