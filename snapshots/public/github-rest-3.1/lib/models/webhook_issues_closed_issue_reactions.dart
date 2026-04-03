// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookIssuesClosedIssueReactions {const WebhookIssuesClosedIssueReactions({this.plus1, this.minus1, this.confused, this.eyes, this.heart, this.hooray, this.laugh, this.rocket, this.totalCount, this.url, });

factory WebhookIssuesClosedIssueReactions.fromJson(Map<String, dynamic> json) { return WebhookIssuesClosedIssueReactions(
  plus1: json['+1'] != null ? (json['+1'] as num).toInt() : null,
  minus1: json['-1'] != null ? (json['-1'] as num).toInt() : null,
  confused: json['confused'] != null ? (json['confused'] as num).toInt() : null,
  eyes: json['eyes'] != null ? (json['eyes'] as num).toInt() : null,
  heart: json['heart'] != null ? (json['heart'] as num).toInt() : null,
  hooray: json['hooray'] != null ? (json['hooray'] as num).toInt() : null,
  laugh: json['laugh'] != null ? (json['laugh'] as num).toInt() : null,
  rocket: json['rocket'] != null ? (json['rocket'] as num).toInt() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  url: json['url'] as String?,
); }

final int? plus1;

final int? minus1;

final int? confused;

final int? eyes;

final int? heart;

final int? hooray;

final int? laugh;

final int? rocket;

final int? totalCount;

final String? url;

Map<String, dynamic> toJson() { return {
  '+1': ?plus1,
  '-1': ?minus1,
  'confused': ?confused,
  'eyes': ?eyes,
  'heart': ?heart,
  'hooray': ?hooray,
  'laugh': ?laugh,
  'rocket': ?rocket,
  'total_count': ?totalCount,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'+1', '-1', 'confused', 'eyes', 'heart', 'hooray', 'laugh', 'rocket', 'total_count', 'url'}.contains(key)); } 
WebhookIssuesClosedIssueReactions copyWith({int Function()? plus1, int Function()? minus1, int Function()? confused, int Function()? eyes, int Function()? heart, int Function()? hooray, int Function()? laugh, int Function()? rocket, int Function()? totalCount, String Function()? url, }) { return WebhookIssuesClosedIssueReactions(
  plus1: plus1 != null ? plus1() : this.plus1,
  minus1: minus1 != null ? minus1() : this.minus1,
  confused: confused != null ? confused() : this.confused,
  eyes: eyes != null ? eyes() : this.eyes,
  heart: heart != null ? heart() : this.heart,
  hooray: hooray != null ? hooray() : this.hooray,
  laugh: laugh != null ? laugh() : this.laugh,
  rocket: rocket != null ? rocket() : this.rocket,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssuesClosedIssueReactions &&
          plus1 == other.plus1 &&
          minus1 == other.minus1 &&
          confused == other.confused &&
          eyes == other.eyes &&
          heart == other.heart &&
          hooray == other.hooray &&
          laugh == other.laugh &&
          rocket == other.rocket &&
          totalCount == other.totalCount &&
          url == other.url; } 
@override int get hashCode { return Object.hash(plus1, minus1, confused, eyes, heart, hooray, laugh, rocket, totalCount, url); } 
@override String toString() { return 'WebhookIssuesClosedIssueReactions(plus1: $plus1, minus1: $minus1, confused: $confused, eyes: $eyes, heart: $heart, hooray: $hooray, laugh: $laugh, rocket: $rocket, totalCount: $totalCount, url: $url)'; } 
 }
