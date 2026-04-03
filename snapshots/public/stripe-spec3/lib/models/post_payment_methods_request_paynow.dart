// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
@immutable final class PostPaymentMethodsRequestPaynow {const PostPaymentMethodsRequestPaynow();

factory PostPaymentMethodsRequestPaynow.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestPaynow(

); }

Map<String, dynamic> toJson() { return {

}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodsRequestPaynow copyWith() { return PostPaymentMethodsRequestPaynow(

); } 
@override bool operator ==(Object other) { return identical(this, other) || other is PostPaymentMethodsRequestPaynow; } 
@override int get hashCode { return runtimeType.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestPaynow()'; } 
 }
