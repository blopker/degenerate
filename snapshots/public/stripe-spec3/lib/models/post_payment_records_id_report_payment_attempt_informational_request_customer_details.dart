// GENERATED CODE - DO NOT MODIFY BY HAND

/// Customer information for this payment.
final class PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails {const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails({this.customer, this.email, this.name, this.phone, });

factory PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails(
  customer: json['customer'] as String?,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

final String? customer;

final String? email;

final String? name;

final String? phone;

Map<String, dynamic> toJson() { return {
  'customer': ?customer,
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails copyWith({String Function()? customer, String Function()? email, String Function()? name, String Function()? phone, }) { return PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails(
  customer: customer != null ? customer() : this.customer,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails &&
          customer == other.customer &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(customer, email, name, phone); } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptInformationalRequestCustomerDetails(customer: $customer, email: $email, name: $name, phone: $phone)'; } 
 }
