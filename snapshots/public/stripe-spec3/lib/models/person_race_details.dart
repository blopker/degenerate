// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PersonRaceDetailsRace {const PersonRaceDetailsRace._(this.value);

factory PersonRaceDetailsRace.fromJson(String json) { return switch (json) {
  'african_american' => africanAmerican,
  'american_indian_or_alaska_native' => americanIndianOrAlaskaNative,
  'asian' => asian,
  'asian_indian' => asianIndian,
  'black_or_african_american' => blackOrAfricanAmerican,
  'chinese' => chinese,
  'ethiopian' => ethiopian,
  'filipino' => filipino,
  'guamanian_or_chamorro' => guamanianOrChamorro,
  'haitian' => haitian,
  'jamaican' => jamaican,
  'japanese' => japanese,
  'korean' => korean,
  'native_hawaiian' => nativeHawaiian,
  'native_hawaiian_or_other_pacific_islander' => nativeHawaiianOrOtherPacificIslander,
  'nigerian' => nigerian,
  'other_asian' => otherAsian,
  'other_black_or_african_american' => otherBlackOrAfricanAmerican,
  'other_pacific_islander' => otherPacificIslander,
  'prefer_not_to_answer' => preferNotToAnswer,
  'samoan' => samoan,
  'somali' => somali,
  'vietnamese' => vietnamese,
  'white' => white,
  _ => PersonRaceDetailsRace._(json),
}; }

static const PersonRaceDetailsRace africanAmerican = PersonRaceDetailsRace._('african_american');

static const PersonRaceDetailsRace americanIndianOrAlaskaNative = PersonRaceDetailsRace._('american_indian_or_alaska_native');

static const PersonRaceDetailsRace asian = PersonRaceDetailsRace._('asian');

static const PersonRaceDetailsRace asianIndian = PersonRaceDetailsRace._('asian_indian');

static const PersonRaceDetailsRace blackOrAfricanAmerican = PersonRaceDetailsRace._('black_or_african_american');

static const PersonRaceDetailsRace chinese = PersonRaceDetailsRace._('chinese');

static const PersonRaceDetailsRace ethiopian = PersonRaceDetailsRace._('ethiopian');

static const PersonRaceDetailsRace filipino = PersonRaceDetailsRace._('filipino');

static const PersonRaceDetailsRace guamanianOrChamorro = PersonRaceDetailsRace._('guamanian_or_chamorro');

static const PersonRaceDetailsRace haitian = PersonRaceDetailsRace._('haitian');

static const PersonRaceDetailsRace jamaican = PersonRaceDetailsRace._('jamaican');

static const PersonRaceDetailsRace japanese = PersonRaceDetailsRace._('japanese');

static const PersonRaceDetailsRace korean = PersonRaceDetailsRace._('korean');

static const PersonRaceDetailsRace nativeHawaiian = PersonRaceDetailsRace._('native_hawaiian');

static const PersonRaceDetailsRace nativeHawaiianOrOtherPacificIslander = PersonRaceDetailsRace._('native_hawaiian_or_other_pacific_islander');

static const PersonRaceDetailsRace nigerian = PersonRaceDetailsRace._('nigerian');

static const PersonRaceDetailsRace otherAsian = PersonRaceDetailsRace._('other_asian');

static const PersonRaceDetailsRace otherBlackOrAfricanAmerican = PersonRaceDetailsRace._('other_black_or_african_american');

static const PersonRaceDetailsRace otherPacificIslander = PersonRaceDetailsRace._('other_pacific_islander');

static const PersonRaceDetailsRace preferNotToAnswer = PersonRaceDetailsRace._('prefer_not_to_answer');

static const PersonRaceDetailsRace samoan = PersonRaceDetailsRace._('samoan');

static const PersonRaceDetailsRace somali = PersonRaceDetailsRace._('somali');

static const PersonRaceDetailsRace vietnamese = PersonRaceDetailsRace._('vietnamese');

static const PersonRaceDetailsRace white = PersonRaceDetailsRace._('white');

static const List<PersonRaceDetailsRace> values = [africanAmerican, americanIndianOrAlaskaNative, asian, asianIndian, blackOrAfricanAmerican, chinese, ethiopian, filipino, guamanianOrChamorro, haitian, jamaican, japanese, korean, nativeHawaiian, nativeHawaiianOrOtherPacificIslander, nigerian, otherAsian, otherBlackOrAfricanAmerican, otherPacificIslander, preferNotToAnswer, samoan, somali, vietnamese, white];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PersonRaceDetailsRace && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PersonRaceDetailsRace($value)'; } 
 }
/// 
final class PersonRaceDetails {const PersonRaceDetails({this.race, this.raceOther, });

factory PersonRaceDetails.fromJson(Map<String, dynamic> json) { return PersonRaceDetails(
  race: (json['race'] as List<dynamic>?)?.map((e) => PersonRaceDetailsRace.fromJson(e as String)).toList(),
  raceOther: json['race_other'] as String?,
); }

/// The persons race.
final List<PersonRaceDetailsRace>? race;

/// Please specify your race, when other is selected.
final String? raceOther;

Map<String, dynamic> toJson() { return {
  if (race != null) 'race': race?.map((e) => e.toJson()).toList(),
  'race_other': ?raceOther,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PersonRaceDetails copyWith({List<PersonRaceDetailsRace>? Function()? race, String? Function()? raceOther, }) { return PersonRaceDetails(
  race: race != null ? race() : this.race,
  raceOther: raceOther != null ? raceOther() : this.raceOther,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersonRaceDetails &&
          listEquals(race, other.race) &&
          raceOther == other.raceOther; } 
@override int get hashCode { return Object.hash(Object.hashAll(race ?? const []), raceOther); } 
@override String toString() { return 'PersonRaceDetails(race: $race, raceOther: $raceOther)'; } 
 }
