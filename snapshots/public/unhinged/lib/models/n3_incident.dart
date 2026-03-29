// GENERATED CODE - DO NOT MODIFY BY HAND

import 'phase.dart';

final class $3Incident {
  const $3Incident({
    required this.$1id,
    required this.$2species,
    this.$3DreadLevel = 6.66,
    this.caf,
    this.gnirts,
    this.ab,
  });

  factory $3Incident.fromJson(Map<String, dynamic> json) {
    return $3Incident(
      $1id: json['1id'] as String,
      $2species: Phase.fromJson(json['2species'] as String),
      $3DreadLevel: json.containsKey('3-dread-level')
          ? (json['3-dread-level'] as num).toDouble()
          : 6.66,
      caf: json['café'] as String?,
      gnirts: json['‮gnirts'] as String?,
      ab: json['a​b'] as String?,
    );
  }

  final String $1id;

  final Phase $2species;

  final double $3DreadLevel;

  final String? caf;

  /// Begins with U+202E RIGHT-TO-LEFT OVERRIDE.
  final String? gnirts;

  /// Looks like ab but has U+200B between them.
  final String? ab;

  Map<String, dynamic> toJson() {
    return {
      '1id': $1id,
      '2species': $2species.toJson(),
      '3-dread-level': $3DreadLevel,
      'café': ?caf,
      '‮gnirts': ?gnirts,
      'a​b': ?ab,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('1id') &&
        json['1id'] is String &&
        json.containsKey('2species');
  }

  $3Incident copyWith({
    String? $1id,
    Phase? $2species,
    double Function()? $3DreadLevel,
    String Function()? caf,
    String Function()? gnirts,
    String Function()? ab,
  }) {
    return $3Incident(
      $1id: $1id ?? this.$1id,
      $2species: $2species ?? this.$2species,
      $3DreadLevel: $3DreadLevel != null ? $3DreadLevel() : this.$3DreadLevel,
      caf: caf != null ? caf() : this.caf,
      gnirts: gnirts != null ? gnirts() : this.gnirts,
      ab: ab != null ? ab() : this.ab,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is $3Incident &&
            $1id == other.$1id &&
            $2species == other.$2species &&
            $3DreadLevel == other.$3DreadLevel &&
            caf == other.caf &&
            gnirts == other.gnirts &&
            ab == other.ab;
  }

  @override
  int get hashCode {
    return Object.hash($1id, $2species, $3DreadLevel, caf, gnirts, ab);
  }

  @override
  String toString() {
    return '\$3Incident(\$1id: ${$1id}, \$2species: ${$2species}, \$3DreadLevel: ${$3DreadLevel}, caf: $caf, gnirts: $gnirts, ab: $ab)';
  }
}
