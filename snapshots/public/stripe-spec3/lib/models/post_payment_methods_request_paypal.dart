// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
@immutable final class PostPaymentMethodsRequestPaypal {const PostPaymentMethodsRequestPaypal();

factory PostPaymentMethodsRequestPaypal.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestPaypal(

); }

Map<String, dynamic> toJson() { return {

}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodsRequestPaypal copyWith() { return PostPaymentMethodsRequestPaypal(

); } 
@override bool operator ==(Object other) { return identical(this, other) || other is PostPaymentMethodsRequestPaypal; } 
@override int get hashCode { return runtimeType.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestPaypal()'; } 
 }
