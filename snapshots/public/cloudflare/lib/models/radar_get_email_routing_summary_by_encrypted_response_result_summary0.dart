// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0 {const RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0({required this.encrypted, required this.notEncrypted, });

factory RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0(
  encrypted: json['ENCRYPTED'] as String,
  notEncrypted: json['NOT_ENCRYPTED'] as String,
); }

/// A numeric string.
final String encrypted;

/// A numeric string.
final String notEncrypted;

Map<String, dynamic> toJson() { return {
  'ENCRYPTED': encrypted,
  'NOT_ENCRYPTED': notEncrypted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ENCRYPTED') && json['ENCRYPTED'] is String &&
      json.containsKey('NOT_ENCRYPTED') && json['NOT_ENCRYPTED'] is String; } 
RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0 copyWith({String? encrypted, String? notEncrypted, }) { return RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0(
  encrypted: encrypted ?? this.encrypted,
  notEncrypted: notEncrypted ?? this.notEncrypted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0 &&
          encrypted == other.encrypted &&
          notEncrypted == other.notEncrypted; } 
@override int get hashCode { return Object.hash(encrypted, notEncrypted); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByEncryptedResponseResultSummary0(encrypted: $encrypted, notEncrypted: $notEncrypted)'; } 
 }
