// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class SourceMandateNotificationAcssDebitData {const SourceMandateNotificationAcssDebitData({this.statementDescriptor});

factory SourceMandateNotificationAcssDebitData.fromJson(Map<String, dynamic> json) { return SourceMandateNotificationAcssDebitData(
  statementDescriptor: json['statement_descriptor'] as String?,
); }

/// The statement descriptor associate with the debit.
final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'statement_descriptor'}.contains(key)); } 
SourceMandateNotificationAcssDebitData copyWith({String Function()? statementDescriptor}) { return SourceMandateNotificationAcssDebitData(
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceMandateNotificationAcssDebitData &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return statementDescriptor.hashCode; } 
@override String toString() { return 'SourceMandateNotificationAcssDebitData(statementDescriptor: $statementDescriptor)'; } 
 }
