// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the language code for transcription to ensure accurate results.
final class RealtimekitTranscriptionConfigLanguage {const RealtimekitTranscriptionConfigLanguage._(this.value);

factory RealtimekitTranscriptionConfigLanguage.fromJson(String json) { return switch (json) {
  'en-US' => enUs,
  'en-IN' => enIn,
  'de' => de,
  'hi' => hi,
  'sv' => sv,
  'ru' => ru,
  'pl' => pl,
  'el' => el,
  'fr' => fr,
  'nl' => nl,
  _ => RealtimekitTranscriptionConfigLanguage._(json),
}; }

static const RealtimekitTranscriptionConfigLanguage enUs = RealtimekitTranscriptionConfigLanguage._('en-US');

static const RealtimekitTranscriptionConfigLanguage enIn = RealtimekitTranscriptionConfigLanguage._('en-IN');

static const RealtimekitTranscriptionConfigLanguage de = RealtimekitTranscriptionConfigLanguage._('de');

static const RealtimekitTranscriptionConfigLanguage hi = RealtimekitTranscriptionConfigLanguage._('hi');

static const RealtimekitTranscriptionConfigLanguage sv = RealtimekitTranscriptionConfigLanguage._('sv');

static const RealtimekitTranscriptionConfigLanguage ru = RealtimekitTranscriptionConfigLanguage._('ru');

static const RealtimekitTranscriptionConfigLanguage pl = RealtimekitTranscriptionConfigLanguage._('pl');

static const RealtimekitTranscriptionConfigLanguage el = RealtimekitTranscriptionConfigLanguage._('el');

static const RealtimekitTranscriptionConfigLanguage fr = RealtimekitTranscriptionConfigLanguage._('fr');

static const RealtimekitTranscriptionConfigLanguage nl = RealtimekitTranscriptionConfigLanguage._('nl');

static const List<RealtimekitTranscriptionConfigLanguage> values = [enUs, enIn, de, hi, sv, ru, pl, el, fr, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitTranscriptionConfigLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitTranscriptionConfigLanguage($value)'; } 
 }
/// Transcription Configurations
final class RealtimekitTranscriptionConfig {const RealtimekitTranscriptionConfig({this.keywords, this.language = RealtimekitTranscriptionConfigLanguage.enUs, this.profanityFilter = false, });

factory RealtimekitTranscriptionConfig.fromJson(Map<String, dynamic> json) { return RealtimekitTranscriptionConfig(
  keywords: (json['keywords'] as List<dynamic>?)?.map((e) => e as String).toList(),
  language: json.containsKey('language') ? RealtimekitTranscriptionConfigLanguage.fromJson(json['language'] as String) : RealtimekitTranscriptionConfigLanguage.enUs,
  profanityFilter: json.containsKey('profanity_filter') ? json['profanity_filter'] as bool : false,
); }

/// Adds specific terms to improve accurate detection during transcription.
final List<String>? keywords;

/// Specifies the language code for transcription to ensure accurate results.
final RealtimekitTranscriptionConfigLanguage language;

/// Control the inclusion of offensive language in transcriptions.
final bool profanityFilter;

Map<String, dynamic> toJson() { return {
  'keywords': ?keywords,
  'language': language.toJson(),
  'profanity_filter': profanityFilter,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitTranscriptionConfig copyWith({List<String> Function()? keywords, RealtimekitTranscriptionConfigLanguage Function()? language, bool Function()? profanityFilter, }) { return RealtimekitTranscriptionConfig(
  keywords: keywords != null ? keywords() : this.keywords,
  language: language != null ? language() : this.language,
  profanityFilter: profanityFilter != null ? profanityFilter() : this.profanityFilter,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitTranscriptionConfig &&
          listEquals(keywords, other.keywords) &&
          language == other.language &&
          profanityFilter == other.profanityFilter; } 
@override int get hashCode { return Object.hash(Object.hashAll(keywords ?? const []), language, profanityFilter); } 
@override String toString() { return 'RealtimekitTranscriptionConfig(keywords: $keywords, language: $language, profanityFilter: $profanityFilter)'; } 
 }
