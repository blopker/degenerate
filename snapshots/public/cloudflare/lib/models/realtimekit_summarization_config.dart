// GENERATED CODE - DO NOT MODIFY BY HAND

/// Defines the style of the summary, such as general, team meeting, or sales call.
final class RealtimekitSummarizationConfigSummaryType {const RealtimekitSummarizationConfigSummaryType._(this.value);

factory RealtimekitSummarizationConfigSummaryType.fromJson(String json) { return switch (json) {
  'general' => general,
  'team_meeting' => teamMeeting,
  'sales_call' => salesCall,
  'client_check_in' => clientCheckIn,
  'interview' => interview,
  'daily_standup' => dailyStandup,
  'one_on_one_meeting' => oneOnOneMeeting,
  'lecture' => lecture,
  'code_review' => codeReview,
  _ => RealtimekitSummarizationConfigSummaryType._(json),
}; }

static const RealtimekitSummarizationConfigSummaryType general = RealtimekitSummarizationConfigSummaryType._('general');

static const RealtimekitSummarizationConfigSummaryType teamMeeting = RealtimekitSummarizationConfigSummaryType._('team_meeting');

static const RealtimekitSummarizationConfigSummaryType salesCall = RealtimekitSummarizationConfigSummaryType._('sales_call');

static const RealtimekitSummarizationConfigSummaryType clientCheckIn = RealtimekitSummarizationConfigSummaryType._('client_check_in');

static const RealtimekitSummarizationConfigSummaryType interview = RealtimekitSummarizationConfigSummaryType._('interview');

static const RealtimekitSummarizationConfigSummaryType dailyStandup = RealtimekitSummarizationConfigSummaryType._('daily_standup');

static const RealtimekitSummarizationConfigSummaryType oneOnOneMeeting = RealtimekitSummarizationConfigSummaryType._('one_on_one_meeting');

static const RealtimekitSummarizationConfigSummaryType lecture = RealtimekitSummarizationConfigSummaryType._('lecture');

static const RealtimekitSummarizationConfigSummaryType codeReview = RealtimekitSummarizationConfigSummaryType._('code_review');

static const List<RealtimekitSummarizationConfigSummaryType> values = [general, teamMeeting, salesCall, clientCheckIn, interview, dailyStandup, oneOnOneMeeting, lecture, codeReview];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitSummarizationConfigSummaryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitSummarizationConfigSummaryType($value)'; } 
 }
/// Determines the text format of the summary, such as plain text or markdown.
final class RealtimekitSummarizationConfigTextFormat {const RealtimekitSummarizationConfigTextFormat._(this.value);

factory RealtimekitSummarizationConfigTextFormat.fromJson(String json) { return switch (json) {
  'plain_text' => plainText,
  'markdown' => markdown,
  _ => RealtimekitSummarizationConfigTextFormat._(json),
}; }

static const RealtimekitSummarizationConfigTextFormat plainText = RealtimekitSummarizationConfigTextFormat._('plain_text');

static const RealtimekitSummarizationConfigTextFormat markdown = RealtimekitSummarizationConfigTextFormat._('markdown');

static const List<RealtimekitSummarizationConfigTextFormat> values = [plainText, markdown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitSummarizationConfigTextFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitSummarizationConfigTextFormat($value)'; } 
 }
/// Summary Config
final class RealtimekitSummarizationConfig {const RealtimekitSummarizationConfig({this.summaryType = RealtimekitSummarizationConfigSummaryType.general, this.textFormat = RealtimekitSummarizationConfigTextFormat.markdown, this.wordLimit = 500, });

factory RealtimekitSummarizationConfig.fromJson(Map<String, dynamic> json) { return RealtimekitSummarizationConfig(
  summaryType: json.containsKey('summary_type') ? RealtimekitSummarizationConfigSummaryType.fromJson(json['summary_type'] as String) : RealtimekitSummarizationConfigSummaryType.general,
  textFormat: json.containsKey('text_format') ? RealtimekitSummarizationConfigTextFormat.fromJson(json['text_format'] as String) : RealtimekitSummarizationConfigTextFormat.markdown,
  wordLimit: json.containsKey('word_limit') ? (json['word_limit'] as num).toInt() : 500,
); }

/// Defines the style of the summary, such as general, team meeting, or sales call.
final RealtimekitSummarizationConfigSummaryType summaryType;

/// Determines the text format of the summary, such as plain text or markdown.
final RealtimekitSummarizationConfigTextFormat textFormat;

/// Sets the maximum number of words in the meeting summary.
final int wordLimit;

Map<String, dynamic> toJson() { return {
  'summary_type': summaryType.toJson(),
  'text_format': textFormat.toJson(),
  'word_limit': wordLimit,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitSummarizationConfig copyWith({RealtimekitSummarizationConfigSummaryType Function()? summaryType, RealtimekitSummarizationConfigTextFormat Function()? textFormat, int Function()? wordLimit, }) { return RealtimekitSummarizationConfig(
  summaryType: summaryType != null ? summaryType() : this.summaryType,
  textFormat: textFormat != null ? textFormat() : this.textFormat,
  wordLimit: wordLimit != null ? wordLimit() : this.wordLimit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitSummarizationConfig &&
          summaryType == other.summaryType &&
          textFormat == other.textFormat &&
          wordLimit == other.wordLimit; } 
@override int get hashCode { return Object.hash(summaryType, textFormat, wordLimit); } 
@override String toString() { return 'RealtimekitSummarizationConfig(summaryType: $summaryType, textFormat: $textFormat, wordLimit: $wordLimit)'; } 
 }
