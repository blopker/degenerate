// GENERATED CODE - DO NOT MODIFY BY HAND

/// The reason why the response is incomplete.
final class ResponseIncompleteDetailsReason {const ResponseIncompleteDetailsReason._(this.value);

factory ResponseIncompleteDetailsReason.fromJson(String json) { return switch (json) {
  'max_output_tokens' => maxOutputTokens,
  'content_filter' => contentFilter,
  _ => ResponseIncompleteDetailsReason._(json),
}; }

static const ResponseIncompleteDetailsReason maxOutputTokens = ResponseIncompleteDetailsReason._('max_output_tokens');

static const ResponseIncompleteDetailsReason contentFilter = ResponseIncompleteDetailsReason._('content_filter');

static const List<ResponseIncompleteDetailsReason> values = [maxOutputTokens, contentFilter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseIncompleteDetailsReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseIncompleteDetailsReason($value)'; } 
 }
/// Details about why the response is incomplete.
/// 
final class ResponseIncompleteDetails {const ResponseIncompleteDetails({this.reason});

factory ResponseIncompleteDetails.fromJson(Map<String, dynamic> json) { return ResponseIncompleteDetails(
  reason: json['reason'] != null ? ResponseIncompleteDetailsReason.fromJson(json['reason'] as String) : null,
); }

/// The reason why the response is incomplete.
final ResponseIncompleteDetailsReason? reason;

Map<String, dynamic> toJson() { return {
  if (reason != null) 'reason': reason?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reason'}.contains(key)); } 
ResponseIncompleteDetails copyWith({ResponseIncompleteDetailsReason Function()? reason}) { return ResponseIncompleteDetails(
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseIncompleteDetails &&
          reason == other.reason; } 
@override int get hashCode { return reason.hashCode; } 
@override String toString() { return 'ResponseIncompleteDetails(reason: $reason)'; } 
 }
