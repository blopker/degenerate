// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class ReferralChoices {
  const ReferralChoices._(this.value);

  factory ReferralChoices.fromJson(String json) {
    return switch (json) {
      'default' => $default,
      'search' => search,
      'social' => social,
      'keeper' => keeper,
      'pamphlet' => pamphlet,
      'blog' => blog,
      'newsletter' => newsletter,
      'dream' => dream,
      'other' => $other,
      _ => ReferralChoices._(json),
    };
  }

  static const ReferralChoices $default = ReferralChoices._('default');

  static const ReferralChoices search = ReferralChoices._('search');

  static const ReferralChoices social = ReferralChoices._('social');

  static const ReferralChoices keeper = ReferralChoices._('keeper');

  static const ReferralChoices pamphlet = ReferralChoices._('pamphlet');

  static const ReferralChoices blog = ReferralChoices._('blog');

  static const ReferralChoices newsletter = ReferralChoices._('newsletter');

  static const ReferralChoices dream = ReferralChoices._('dream');

  static const ReferralChoices $other = ReferralChoices._('other');

  static const List<ReferralChoices> values = [
    $default,
    search,
    social,
    keeper,
    pamphlet,
    blog,
    newsletter,
    dream,
    $other,
  ];

  final String value;

  String toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ReferralChoices && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'ReferralChoices($value)';
  }
}

@immutable
final class OnboardSchema {
  const OnboardSchema({
    this.referralSource,
    this.yearBorn = const Omittable.absent(),
    this.hopes = const Omittable.absent(),
    this.referralOther = const Omittable.absent(),
  });

  factory OnboardSchema.fromJson(Map<String, dynamic> json) {
    return OnboardSchema(
      referralSource: json['referral_source'] != null
          ? ReferralChoices.fromJson(json['referral_source'] as String)
          : null,
      yearBorn: json.containsKey('year_born')
          ? Omittable(
              json['year_born'] != null
                  ? (json['year_born'] as num).toInt()
                  : null,
            )
          : const Omittable.absent(),
      hopes: json.containsKey('hopes')
          ? Omittable(json['hopes'] as String?)
          : const Omittable.absent(),
      referralOther: json.containsKey('referral_other')
          ? Omittable(json['referral_other'] as String?)
          : const Omittable.absent(),
    );
  }

  final ReferralChoices? referralSource;

  final Omittable<int?> yearBorn;

  final Omittable<String?> hopes;

  /// Please tell us more about how you found us
  final Omittable<String?> referralOther;

  /// The value with the schema default applied when absent.
  ReferralChoices get referralSourceOrDefault {
    return referralSource ?? ReferralChoices.fromJson('default');
  }

  /// The value with the schema default applied when absent.
  String? get referralOtherOrDefault {
    return referralOther.valueOr('');
  }

  Map<String, dynamic> toJson() {
    return {
      if (referralSource != null) 'referral_source': referralSource?.toJson(),
      if (yearBorn.isPresent) 'year_born': yearBorn.value,
      if (hopes.isPresent) 'hopes': hopes.value,
      if (referralOther.isPresent) 'referral_other': referralOther.value,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any(
      (key) => const {
        'referral_source',
        'year_born',
        'hopes',
        'referral_other',
      }.contains(key),
    );
  }

  OnboardSchema copyWith({
    ReferralChoices? Function()? referralSource,
    Omittable<int?>? yearBorn,
    Omittable<String?>? hopes,
    Omittable<String?>? referralOther,
  }) {
    return OnboardSchema(
      referralSource: referralSource != null
          ? referralSource()
          : this.referralSource,
      yearBorn: yearBorn ?? this.yearBorn,
      hopes: hopes ?? this.hopes,
      referralOther: referralOther ?? this.referralOther,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is OnboardSchema &&
            referralSource == other.referralSource &&
            yearBorn == other.yearBorn &&
            hopes == other.hopes &&
            referralOther == other.referralOther;
  }

  @override
  int get hashCode {
    return Object.hash(referralSource, yearBorn, hopes, referralOther);
  }

  @override
  String toString() {
    return 'OnboardSchema(referralSource: $referralSource, yearBorn: $yearBorn, hopes: $hopes, referralOther: $referralOther)';
  }
}
