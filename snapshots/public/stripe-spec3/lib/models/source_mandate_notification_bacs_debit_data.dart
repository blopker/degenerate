// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class SourceMandateNotificationBacsDebitData {const SourceMandateNotificationBacsDebitData({this.last4});

factory SourceMandateNotificationBacsDebitData.fromJson(Map<String, dynamic> json) { return SourceMandateNotificationBacsDebitData(
  last4: json['last4'] as String?,
); }

/// Last 4 digits of the account number associated with the debit.
final String? last4;

Map<String, dynamic> toJson() { return {
  'last4': ?last4,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'last4'}.contains(key)); } 
SourceMandateNotificationBacsDebitData copyWith({String Function()? last4}) { return SourceMandateNotificationBacsDebitData(
  last4: last4 != null ? last4() : this.last4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceMandateNotificationBacsDebitData &&
          last4 == other.last4; } 
@override int get hashCode { return last4.hashCode; } 
@override String toString() { return 'SourceMandateNotificationBacsDebitData(last4: $last4)'; } 
 }
