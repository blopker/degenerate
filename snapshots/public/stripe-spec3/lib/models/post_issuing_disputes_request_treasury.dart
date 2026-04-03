// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Params for disputes related to Treasury FinancialAccounts
@immutable final class PostIssuingDisputesRequestTreasury {const PostIssuingDisputesRequestTreasury({required this.receivedDebit});

factory PostIssuingDisputesRequestTreasury.fromJson(Map<String, dynamic> json) { return PostIssuingDisputesRequestTreasury(
  receivedDebit: json['received_debit'] as String,
); }

final String receivedDebit;

Map<String, dynamic> toJson() { return {
  'received_debit': receivedDebit,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('received_debit') && json['received_debit'] is String; } 
PostIssuingDisputesRequestTreasury copyWith({String? receivedDebit}) { return PostIssuingDisputesRequestTreasury(
  receivedDebit: receivedDebit ?? this.receivedDebit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingDisputesRequestTreasury &&
          receivedDebit == other.receivedDebit; } 
@override int get hashCode { return receivedDebit.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestTreasury(receivedDebit: $receivedDebit)'; } 
 }
