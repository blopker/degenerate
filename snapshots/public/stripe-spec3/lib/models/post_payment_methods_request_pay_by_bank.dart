// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
@immutable final class PostPaymentMethodsRequestPayByBank {const PostPaymentMethodsRequestPayByBank();

factory PostPaymentMethodsRequestPayByBank.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestPayByBank(

); }

Map<String, dynamic> toJson() { return {

}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodsRequestPayByBank copyWith() { return PostPaymentMethodsRequestPayByBank(

); } 
@override bool operator ==(Object other) { return identical(this, other) || other is PostPaymentMethodsRequestPayByBank; } 
@override int get hashCode { return runtimeType.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestPayByBank()'; } 
 }
