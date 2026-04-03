// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityGetDomainResponseResultEmailsProcessed {const EmailSecurityGetDomainResponseResultEmailsProcessed({required this.timestamp, required this.totalEmailsProcessed, required this.totalEmailsProcessedPrevious, });

factory EmailSecurityGetDomainResponseResultEmailsProcessed.fromJson(Map<String, dynamic> json) { return EmailSecurityGetDomainResponseResultEmailsProcessed(
  timestamp: DateTime.parse(json['timestamp'] as String),
  totalEmailsProcessed: (json['total_emails_processed'] as num).toInt(),
  totalEmailsProcessedPrevious: (json['total_emails_processed_previous'] as num).toInt(),
); }

final DateTime timestamp;

final int totalEmailsProcessed;

final int totalEmailsProcessedPrevious;

Map<String, dynamic> toJson() { return {
  'timestamp': timestamp.toIso8601String(),
  'total_emails_processed': totalEmailsProcessed,
  'total_emails_processed_previous': totalEmailsProcessedPrevious,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamp') && json['timestamp'] is String &&
      json.containsKey('total_emails_processed') && json['total_emails_processed'] is num &&
      json.containsKey('total_emails_processed_previous') && json['total_emails_processed_previous'] is num; } 
EmailSecurityGetDomainResponseResultEmailsProcessed copyWith({DateTime? timestamp, int? totalEmailsProcessed, int? totalEmailsProcessedPrevious, }) { return EmailSecurityGetDomainResponseResultEmailsProcessed(
  timestamp: timestamp ?? this.timestamp,
  totalEmailsProcessed: totalEmailsProcessed ?? this.totalEmailsProcessed,
  totalEmailsProcessedPrevious: totalEmailsProcessedPrevious ?? this.totalEmailsProcessedPrevious,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetDomainResponseResultEmailsProcessed &&
          timestamp == other.timestamp &&
          totalEmailsProcessed == other.totalEmailsProcessed &&
          totalEmailsProcessedPrevious == other.totalEmailsProcessedPrevious; } 
@override int get hashCode { return Object.hash(timestamp, totalEmailsProcessed, totalEmailsProcessedPrevious); } 
@override String toString() { return 'EmailSecurityGetDomainResponseResultEmailsProcessed(timestamp: $timestamp, totalEmailsProcessed: $totalEmailsProcessed, totalEmailsProcessedPrevious: $totalEmailsProcessedPrevious)'; } 
 }
