// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'mobile_space_detail_schema.dart';
import 'session_detail_schema.dart';

@immutable
final class SummarySpacesSchema {
  const SummarySpacesSchema({
    required this.upcoming,
    required this.forYou,
    required this.explore,
  });

  factory SummarySpacesSchema.fromJson(Map<String, dynamic> json) {
    return SummarySpacesSchema(
      upcoming: (json['upcoming'] as List<dynamic>)
          .map((e) => SessionDetailSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
      forYou: (json['for_you'] as List<dynamic>)
          .map(
            (e) => MobileSpaceDetailSchema.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      explore: (json['explore'] as List<dynamic>)
          .map(
            (e) => MobileSpaceDetailSchema.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  final List<SessionDetailSchema> upcoming;

  final List<MobileSpaceDetailSchema> forYou;

  final List<MobileSpaceDetailSchema> explore;

  Map<String, dynamic> toJson() {
    return {
      'upcoming': upcoming.map((e) => e.toJson()).toList(),
      'for_you': forYou.map((e) => e.toJson()).toList(),
      'explore': explore.map((e) => e.toJson()).toList(),
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('upcoming') &&
        json.containsKey('for_you') &&
        json.containsKey('explore');
  }

  SummarySpacesSchema copyWith({
    List<SessionDetailSchema>? upcoming,
    List<MobileSpaceDetailSchema>? forYou,
    List<MobileSpaceDetailSchema>? explore,
  }) {
    return SummarySpacesSchema(
      upcoming: upcoming ?? this.upcoming,
      forYou: forYou ?? this.forYou,
      explore: explore ?? this.explore,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is SummarySpacesSchema &&
            listEquals(upcoming, other.upcoming) &&
            listEquals(forYou, other.forYou) &&
            listEquals(explore, other.explore);
  }

  @override
  int get hashCode {
    return Object.hash(
      Object.hashAll(upcoming),
      Object.hashAll(forYou),
      Object.hashAll(explore),
    );
  }

  @override
  String toString() {
    return 'SummarySpacesSchema(upcoming: $upcoming, forYou: $forYou, explore: $explore)';
  }
}
