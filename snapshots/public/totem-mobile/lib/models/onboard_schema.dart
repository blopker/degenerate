// GENERATED CODE - DO NOT MODIFY BY HAND

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

final class OnboardSchema {
  const OnboardSchema({
    this.referralSource = ReferralChoices.$default,
    this.yearBorn,
    this.hopes,
    this.referralOther = '',
  });

  factory OnboardSchema.fromJson(Map<String, dynamic> json) {
    return OnboardSchema(
      referralSource: json.containsKey('referral_source')
          ? ReferralChoices.fromJson(json['referral_source'] as String)
          : ReferralChoices.$default,
      yearBorn: json['year_born'] != null
          ? (json['year_born'] as num).toInt()
          : null,
      hopes: json['hopes'] as String?,
      referralOther: json.containsKey('referral_other')
          ? json['referral_other'] as String?
          : '',
    );
  }

  final ReferralChoices referralSource;

  final int? yearBorn;

  final String? hopes;

  /// Please tell us more about how you found us
  final String? referralOther;

  Map<String, dynamic> toJson() {
    return {
      'referral_source': referralSource.toJson(),
      'year_born': ?yearBorn,
      'hopes': ?hopes,
      'referral_other': ?referralOther,
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
    ReferralChoices Function()? referralSource,
    int? Function()? yearBorn,
    String? Function()? hopes,
    String? Function()? referralOther,
  }) {
    return OnboardSchema(
      referralSource: referralSource != null
          ? referralSource()
          : this.referralSource,
      yearBorn: yearBorn != null ? yearBorn() : this.yearBorn,
      hopes: hopes != null ? hopes() : this.hopes,
      referralOther: referralOther != null
          ? referralOther()
          : this.referralOther,
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
