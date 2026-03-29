// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityDomainEmailsProcessed {const EmailSecurityDomainEmailsProcessed({required this.timestamp, required this.totalEmailsProcessed, required this.totalEmailsProcessedPrevious, });

factory EmailSecurityDomainEmailsProcessed.fromJson(Map<String, dynamic> json) { return EmailSecurityDomainEmailsProcessed(
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
EmailSecurityDomainEmailsProcessed copyWith({DateTime? timestamp, int? totalEmailsProcessed, int? totalEmailsProcessedPrevious, }) { return EmailSecurityDomainEmailsProcessed(
  timestamp: timestamp ?? this.timestamp,
  totalEmailsProcessed: totalEmailsProcessed ?? this.totalEmailsProcessed,
  totalEmailsProcessedPrevious: totalEmailsProcessedPrevious ?? this.totalEmailsProcessedPrevious,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDomainEmailsProcessed &&
          timestamp == other.timestamp &&
          totalEmailsProcessed == other.totalEmailsProcessed &&
          totalEmailsProcessedPrevious == other.totalEmailsProcessedPrevious; } 
@override int get hashCode { return Object.hash(timestamp, totalEmailsProcessed, totalEmailsProcessedPrevious); } 
@override String toString() { return 'EmailSecurityDomainEmailsProcessed(timestamp: $timestamp, totalEmailsProcessed: $totalEmailsProcessed, totalEmailsProcessedPrevious: $totalEmailsProcessedPrevious)'; } 
 }
