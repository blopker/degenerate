// GENERATED CODE - DO NOT MODIFY BY HAND

/// Customer details attached to this payment evaluation.
final class InsightsResourcesPaymentEvaluationCustomerDetails {const InsightsResourcesPaymentEvaluationCustomerDetails({this.customer, this.customerAccount, this.email, this.name, this.phone, });

factory InsightsResourcesPaymentEvaluationCustomerDetails.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationCustomerDetails(
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

/// The ID of the customer associated with the payment evaluation.
final String? customer;

/// The ID of the Account representing the customer associated with the payment evaluation.
final String? customerAccount;

/// The customer's email address.
final String? email;

/// The customer's full name or business name.
final String? name;

/// The customer's phone number.
final String? phone;

Map<String, dynamic> toJson() { return {
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'customer', 'customer_account', 'email', 'name', 'phone'}.contains(key)); } 
InsightsResourcesPaymentEvaluationCustomerDetails copyWith({String? Function()? customer, String? Function()? customerAccount, String? Function()? email, String? Function()? name, String? Function()? phone, }) { return InsightsResourcesPaymentEvaluationCustomerDetails(
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationCustomerDetails &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(customer, customerAccount, email, name, phone); } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationCustomerDetails(customer: $customer, customerAccount: $customerAccount, email: $email, name: $name, phone: $phone)'; } 
 }
