// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSourcesIdVerifyRequest {const PostCustomersCustomerSourcesIdVerifyRequest({this.amounts, this.expand, });

factory PostCustomersCustomerSourcesIdVerifyRequest.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSourcesIdVerifyRequest(
  amounts: (json['amounts'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
final List<int>? amounts;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'amounts': ?amounts,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amounts', 'expand'}.contains(key)); } 
PostCustomersCustomerSourcesIdVerifyRequest copyWith({List<int> Function()? amounts, List<String> Function()? expand, }) { return PostCustomersCustomerSourcesIdVerifyRequest(
  amounts: amounts != null ? amounts() : this.amounts,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSourcesIdVerifyRequest &&
          listEquals(amounts, other.amounts) &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(Object.hashAll(amounts ?? const []), Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostCustomersCustomerSourcesIdVerifyRequest(amounts: $amounts, expand: $expand)'; } 
 }
