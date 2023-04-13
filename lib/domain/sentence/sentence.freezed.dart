// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sentence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sentence _$SentenceFromJson(Map<String, dynamic> json) {
  return _Sentence.fromJson(json);
}

/// @nodoc
mixin _$Sentence {
  bool get giveUp => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get properNoun => throw _privateConstructorUsedError;
  bool get hasCollected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentenceCopyWith<Sentence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentenceCopyWith<$Res> {
  factory $SentenceCopyWith(Sentence value, $Res Function(Sentence) then) =
      _$SentenceCopyWithImpl<$Res, Sentence>;
  @useResult
  $Res call({bool giveUp, String text, String properNoun, bool hasCollected});
}

/// @nodoc
class _$SentenceCopyWithImpl<$Res, $Val extends Sentence>
    implements $SentenceCopyWith<$Res> {
  _$SentenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giveUp = null,
    Object? text = null,
    Object? properNoun = null,
    Object? hasCollected = null,
  }) {
    return _then(_value.copyWith(
      giveUp: null == giveUp
          ? _value.giveUp
          : giveUp // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      properNoun: null == properNoun
          ? _value.properNoun
          : properNoun // ignore: cast_nullable_to_non_nullable
              as String,
      hasCollected: null == hasCollected
          ? _value.hasCollected
          : hasCollected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SentenceCopyWith<$Res> implements $SentenceCopyWith<$Res> {
  factory _$$_SentenceCopyWith(
          _$_Sentence value, $Res Function(_$_Sentence) then) =
      __$$_SentenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool giveUp, String text, String properNoun, bool hasCollected});
}

/// @nodoc
class __$$_SentenceCopyWithImpl<$Res>
    extends _$SentenceCopyWithImpl<$Res, _$_Sentence>
    implements _$$_SentenceCopyWith<$Res> {
  __$$_SentenceCopyWithImpl(
      _$_Sentence _value, $Res Function(_$_Sentence) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giveUp = null,
    Object? text = null,
    Object? properNoun = null,
    Object? hasCollected = null,
  }) {
    return _then(_$_Sentence(
      giveUp: null == giveUp
          ? _value.giveUp
          : giveUp // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      properNoun: null == properNoun
          ? _value.properNoun
          : properNoun // ignore: cast_nullable_to_non_nullable
              as String,
      hasCollected: null == hasCollected
          ? _value.hasCollected
          : hasCollected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sentence with DiagnosticableTreeMixin implements _Sentence {
  const _$_Sentence(
      {this.giveUp = false,
      this.text = '',
      this.properNoun = '',
      this.hasCollected = false});

  factory _$_Sentence.fromJson(Map<String, dynamic> json) =>
      _$$_SentenceFromJson(json);

  @override
  @JsonKey()
  final bool giveUp;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String properNoun;
  @override
  @JsonKey()
  final bool hasCollected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Sentence(giveUp: $giveUp, text: $text, properNoun: $properNoun, hasCollected: $hasCollected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Sentence'))
      ..add(DiagnosticsProperty('giveUp', giveUp))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('properNoun', properNoun))
      ..add(DiagnosticsProperty('hasCollected', hasCollected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sentence &&
            (identical(other.giveUp, giveUp) || other.giveUp == giveUp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.properNoun, properNoun) ||
                other.properNoun == properNoun) &&
            (identical(other.hasCollected, hasCollected) ||
                other.hasCollected == hasCollected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, giveUp, text, properNoun, hasCollected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SentenceCopyWith<_$_Sentence> get copyWith =>
      __$$_SentenceCopyWithImpl<_$_Sentence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SentenceToJson(
      this,
    );
  }
}

abstract class _Sentence implements Sentence {
  const factory _Sentence(
      {final bool giveUp,
      final String text,
      final String properNoun,
      final bool hasCollected}) = _$_Sentence;

  factory _Sentence.fromJson(Map<String, dynamic> json) = _$_Sentence.fromJson;

  @override
  bool get giveUp;
  @override
  String get text;
  @override
  String get properNoun;
  @override
  bool get hasCollected;
  @override
  @JsonKey(ignore: true)
  _$$_SentenceCopyWith<_$_Sentence> get copyWith =>
      throw _privateConstructorUsedError;
}
