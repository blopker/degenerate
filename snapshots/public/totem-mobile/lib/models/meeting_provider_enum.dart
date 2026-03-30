// GENERATED CODE - DO NOT MODIFY BY HAND

final class MeetingProviderEnum {
  const MeetingProviderEnum._(this.value);

  factory MeetingProviderEnum.fromJson(String json) {
    return switch (json) {
      'google_meet' => googleMeet,
      'livekit' => livekit,
      _ => MeetingProviderEnum._(json),
    };
  }

  static const MeetingProviderEnum googleMeet = MeetingProviderEnum._(
    'google_meet',
  );

  static const MeetingProviderEnum livekit = MeetingProviderEnum._('livekit');

  static const List<MeetingProviderEnum> values = [googleMeet, livekit];

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
        other is MeetingProviderEnum && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'MeetingProviderEnum($value)';
  }
}
