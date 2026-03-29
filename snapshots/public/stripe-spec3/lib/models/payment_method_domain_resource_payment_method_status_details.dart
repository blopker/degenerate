// GENERATED CODE - DO NOT MODIFY BY HAND

/// Contains additional details about the status of a payment method for a specific payment method domain.
final class PaymentMethodDomainResourcePaymentMethodStatusDetails {const PaymentMethodDomainResourcePaymentMethodStatusDetails({required this.errorMessage});

factory PaymentMethodDomainResourcePaymentMethodStatusDetails.fromJson(Map<String, dynamic> json) { return PaymentMethodDomainResourcePaymentMethodStatusDetails(
  errorMessage: json['error_message'] as String,
); }

/// The error message associated with the status of the payment method on the domain.
final String errorMessage;

Map<String, dynamic> toJson() { return {
  'error_message': errorMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error_message') && json['error_message'] is String; } 
PaymentMethodDomainResourcePaymentMethodStatusDetails copyWith({String? errorMessage}) { return PaymentMethodDomainResourcePaymentMethodStatusDetails(
  errorMessage: errorMessage ?? this.errorMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDomainResourcePaymentMethodStatusDetails &&
          errorMessage == other.errorMessage; } 
@override int get hashCode { return errorMessage.hashCode; } 
@override String toString() { return 'PaymentMethodDomainResourcePaymentMethodStatusDetails(errorMessage: $errorMessage)'; } 
 }
