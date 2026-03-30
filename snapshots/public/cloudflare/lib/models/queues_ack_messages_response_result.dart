// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class QueuesAckMessagesResponseResult {const QueuesAckMessagesResponseResult({this.ackCount, this.retryCount, this.warnings, });

factory QueuesAckMessagesResponseResult.fromJson(Map<String, dynamic> json) { return QueuesAckMessagesResponseResult(
  ackCount: json['ackCount'] != null ? (json['ackCount'] as num).toDouble() : null,
  retryCount: json['retryCount'] != null ? (json['retryCount'] as num).toDouble() : null,
  warnings: (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The number of messages that were succesfully acknowledged.
final double? ackCount;

/// The number of messages that were succesfully retried.
final double? retryCount;

final List<String>? warnings;

Map<String, dynamic> toJson() { return {
  'ackCount': ?ackCount,
  'retryCount': ?retryCount,
  'warnings': ?warnings,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ackCount', 'retryCount', 'warnings'}.contains(key)); } 
QueuesAckMessagesResponseResult copyWith({double Function()? ackCount, double Function()? retryCount, List<String> Function()? warnings, }) { return QueuesAckMessagesResponseResult(
  ackCount: ackCount != null ? ackCount() : this.ackCount,
  retryCount: retryCount != null ? retryCount() : this.retryCount,
  warnings: warnings != null ? warnings() : this.warnings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueuesAckMessagesResponseResult &&
          ackCount == other.ackCount &&
          retryCount == other.retryCount &&
          listEquals(warnings, other.warnings); } 
@override int get hashCode { return Object.hash(ackCount, retryCount, Object.hashAll(warnings ?? const [])); } 
@override String toString() { return 'QueuesAckMessagesResponseResult(ackCount: $ackCount, retryCount: $retryCount, warnings: $warnings)'; } 
 }
