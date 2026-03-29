// GENERATED CODE - DO NOT MODIFY BY HAND

final class RealtimekitTranscript {const RealtimekitTranscript({required this.sessionId, required this.transcriptDownloadUrl, required this.transcriptDownloadUrlExpiry, });

factory RealtimekitTranscript.fromJson(Map<String, dynamic> json) { return RealtimekitTranscript(
  sessionId: json['sessionId'] as String,
  transcriptDownloadUrl: json['transcript_download_url'] as String,
  transcriptDownloadUrlExpiry: json['transcript_download_url_expiry'] as String,
); }

final String sessionId;

/// URL where the transcript can be downloaded
final String transcriptDownloadUrl;

/// Time when the download URL will expire
final String transcriptDownloadUrlExpiry;

Map<String, dynamic> toJson() { return {
  'sessionId': sessionId,
  'transcript_download_url': transcriptDownloadUrl,
  'transcript_download_url_expiry': transcriptDownloadUrlExpiry,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sessionId') && json['sessionId'] is String &&
      json.containsKey('transcript_download_url') && json['transcript_download_url'] is String &&
      json.containsKey('transcript_download_url_expiry') && json['transcript_download_url_expiry'] is String; } 
RealtimekitTranscript copyWith({String? sessionId, String? transcriptDownloadUrl, String? transcriptDownloadUrlExpiry, }) { return RealtimekitTranscript(
  sessionId: sessionId ?? this.sessionId,
  transcriptDownloadUrl: transcriptDownloadUrl ?? this.transcriptDownloadUrl,
  transcriptDownloadUrlExpiry: transcriptDownloadUrlExpiry ?? this.transcriptDownloadUrlExpiry,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitTranscript &&
          sessionId == other.sessionId &&
          transcriptDownloadUrl == other.transcriptDownloadUrl &&
          transcriptDownloadUrlExpiry == other.transcriptDownloadUrlExpiry; } 
@override int get hashCode { return Object.hash(sessionId, transcriptDownloadUrl, transcriptDownloadUrlExpiry); } 
@override String toString() { return 'RealtimekitTranscript(sessionId: $sessionId, transcriptDownloadUrl: $transcriptDownloadUrl, transcriptDownloadUrlExpiry: $transcriptDownloadUrlExpiry)'; } 
 }
