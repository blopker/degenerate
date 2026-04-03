// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest {const PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest({required this.incrementAmount, this.expand, this.isAmountControllable, });

factory PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  incrementAmount: (json['increment_amount'] as num).toInt(),
  isAmountControllable: json['is_amount_controllable'] as bool?,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The amount to increment the authorization by. This amount is in the authorization currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int incrementAmount;

/// If set `true`, you may provide [amount](https://docs.stripe.com/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
final bool? isAmountControllable;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'increment_amount': incrementAmount,
  'is_amount_controllable': ?isAmountControllable,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('increment_amount') && json['increment_amount'] is num; } 
PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest copyWith({List<String> Function()? expand, int? incrementAmount, bool Function()? isAmountControllable, }) { return PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest(
  expand: expand != null ? expand() : this.expand,
  incrementAmount: incrementAmount ?? this.incrementAmount,
  isAmountControllable: isAmountControllable != null ? isAmountControllable() : this.isAmountControllable,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest &&
          listEquals(expand, other.expand) &&
          incrementAmount == other.incrementAmount &&
          isAmountControllable == other.isAmountControllable; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), incrementAmount, isAmountControllable); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationIncrementRequest(expand: $expand, incrementAmount: $incrementAmount, isAmountControllable: $isAmountControllable)'; } 
 }
