// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping {const PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping({this.amountEligible});

factory PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping.fromJson(Map<String, dynamic> json) { return PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping(
  amountEligible: json['amount_eligible'] != null ? (json['amount_eligible'] as num).toInt() : null,
); }

final int? amountEligible;

Map<String, dynamic> toJson() { return {
  'amount_eligible': ?amountEligible,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_eligible'}.contains(key)); } 
PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping copyWith({int Function()? amountEligible}) { return PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping(
  amountEligible: amountEligible != null ? amountEligible() : this.amountEligible,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping &&
          amountEligible == other.amountEligible; } 
@override int get hashCode { return amountEligible.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderProcessPaymentIntentRequestProcessConfigTipping(amountEligible: $amountEligible)'; } 
 }
