// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines the style of the summary, such as general, team meeting, or sales call.
@immutable final class RealtimekitSummarizationConfigSummaryType {const RealtimekitSummarizationConfigSummaryType._(this.value);

factory RealtimekitSummarizationConfigSummaryType.fromJson(String json) {return switch (json) {
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
};}

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

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RealtimekitSummarizationConfigSummaryType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RealtimekitSummarizationConfigSummaryType($value)';}
}
/// Determines the text format of the summary, such as plain text or markdown.
@immutable final class RealtimekitSummarizationConfigTextFormat {const RealtimekitSummarizationConfigTextFormat._(this.value);

factory RealtimekitSummarizationConfigTextFormat.fromJson(String json) {return switch (json) {
  'plain_text' => plainText,
  'markdown' => markdown,
  _ => RealtimekitSummarizationConfigTextFormat._(json),
};}

static const RealtimekitSummarizationConfigTextFormat plainText = RealtimekitSummarizationConfigTextFormat._('plain_text');

static const RealtimekitSummarizationConfigTextFormat markdown = RealtimekitSummarizationConfigTextFormat._('markdown');

static const List<RealtimekitSummarizationConfigTextFormat> values = [plainText, markdown];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RealtimekitSummarizationConfigTextFormat && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RealtimekitSummarizationConfigTextFormat($value)';}
}
/// Summary Config
@immutable final class RealtimekitSummarizationConfig {const RealtimekitSummarizationConfig({this.summaryType, this.textFormat, this.wordLimit, });

factory RealtimekitSummarizationConfig.fromJson(Map<String, dynamic> json) {return RealtimekitSummarizationConfig(
  summaryType: json['summary_type'] != null ? RealtimekitSummarizationConfigSummaryType.fromJson(json['summary_type'] as String) : null,
  textFormat: json['text_format'] != null ? RealtimekitSummarizationConfigTextFormat.fromJson(json['text_format'] as String) : null,
  wordLimit: json['word_limit'] != null ? (json['word_limit'] as num).toInt() : null,
);}

/// Defines the style of the summary, such as general, team meeting, or sales call.
final RealtimekitSummarizationConfigSummaryType? summaryType;

/// Determines the text format of the summary, such as plain text or markdown.
final RealtimekitSummarizationConfigTextFormat? textFormat;

/// Sets the maximum number of words in the meeting summary.
final int? wordLimit;

/// The value with the schema default applied when absent.
RealtimekitSummarizationConfigSummaryType get summaryTypeOrDefault {return summaryType ?? RealtimekitSummarizationConfigSummaryType.fromJson('general');}
/// The value with the schema default applied when absent.
RealtimekitSummarizationConfigTextFormat get textFormatOrDefault {return textFormat ?? RealtimekitSummarizationConfigTextFormat.fromJson('markdown');}
/// The value with the schema default applied when absent.
int get wordLimitOrDefault {return wordLimit ?? 500;}
Map<String, dynamic> toJson() {return {
  if (summaryType != null) 'summary_type': summaryType?.toJson(),
  if (textFormat != null) 'text_format': textFormat?.toJson(),
  'word_limit': ?wordLimit,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'summary_type', 'text_format', 'word_limit'}.contains(key));}
RealtimekitSummarizationConfig copyWith({RealtimekitSummarizationConfigSummaryType? Function()? summaryType, RealtimekitSummarizationConfigTextFormat? Function()? textFormat, int? Function()? wordLimit, }) {return RealtimekitSummarizationConfig(
  summaryType: summaryType != null ? summaryType() : this.summaryType,
  textFormat: textFormat != null ? textFormat() : this.textFormat,
  wordLimit: wordLimit != null ? wordLimit() : this.wordLimit,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RealtimekitSummarizationConfig &&
          summaryType == other.summaryType &&
          textFormat == other.textFormat &&
          wordLimit == other.wordLimit;}
@override int get hashCode {return Object.hash(summaryType, textFormat, wordLimit);}
@override String toString() {return 'RealtimekitSummarizationConfig(summaryType: $summaryType, textFormat: $textFormat, wordLimit: $wordLimit)';}
}
