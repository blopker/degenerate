// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class YieldTopic {
  const YieldTopic({this.$await, this.$async});

  factory YieldTopic.fromJson(Map<String, dynamic> json) {
    return YieldTopic(
      $await: json['await'] as String?,
      $async: json['async'] as bool?,
    );
  }

  final String? $await;

  final bool? $async;

  Map<String, dynamic> toJson() {
    return {'await': ?$await, 'async': ?$async};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any((key) => const {'await', 'async'}.contains(key));
  }

  YieldTopic copyWith({String Function()? $await, bool Function()? $async}) {
    return YieldTopic(
      $await: $await != null ? $await() : this.$await,
      $async: $async != null ? $async() : this.$async,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is YieldTopic && $await == other.$await && $async == other.$async;
  }

  @override
  int get hashCode {
    return Object.hash($await, $async);
  }

  @override
  String toString() {
    return 'YieldTopic(\$await: ${$await}, \$async: ${$async})';
  }
}
