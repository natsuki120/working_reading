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

UtilSentence _$UtilSentenceFromJson(Map<String, dynamic> json) {
  return _UtilSentence.fromJson(json);
}

/// @nodoc
mixin _$UtilSentence {
  String get text => throw _privateConstructorUsedError;
  String get properNoun => throw _privateConstructorUsedError;
  bool get hasCollected => throw _privateConstructorUsedError;
  bool get giveUp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UtilSentenceCopyWith<UtilSentence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilSentenceCopyWith<$Res> {
  factory $UtilSentenceCopyWith(
          UtilSentence value, $Res Function(UtilSentence) then) =
      _$UtilSentenceCopyWithImpl<$Res, UtilSentence>;
  @useResult
  $Res call({String text, String properNoun, bool hasCollected, bool giveUp});
}

/// @nodoc
class _$UtilSentenceCopyWithImpl<$Res, $Val extends UtilSentence>
    implements $UtilSentenceCopyWith<$Res> {
  _$UtilSentenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? properNoun = null,
    Object? hasCollected = null,
    Object? giveUp = null,
  }) {
    return _then(_value.copyWith(
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
      giveUp: null == giveUp
          ? _value.giveUp
          : giveUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UtilSentenceCopyWith<$Res>
    implements $UtilSentenceCopyWith<$Res> {
  factory _$$_UtilSentenceCopyWith(
          _$_UtilSentence value, $Res Function(_$_UtilSentence) then) =
      __$$_UtilSentenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String properNoun, bool hasCollected, bool giveUp});
}

/// @nodoc
class __$$_UtilSentenceCopyWithImpl<$Res>
    extends _$UtilSentenceCopyWithImpl<$Res, _$_UtilSentence>
    implements _$$_UtilSentenceCopyWith<$Res> {
  __$$_UtilSentenceCopyWithImpl(
      _$_UtilSentence _value, $Res Function(_$_UtilSentence) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? properNoun = null,
    Object? hasCollected = null,
    Object? giveUp = null,
  }) {
    return _then(_$_UtilSentence(
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
      giveUp: null == giveUp
          ? _value.giveUp
          : giveUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UtilSentence with DiagnosticableTreeMixin implements _UtilSentence {
  const _$_UtilSentence(
      {this.text = '',
      this.properNoun = '',
      this.hasCollected = false,
      this.giveUp = false});

  factory _$_UtilSentence.fromJson(Map<String, dynamic> json) =>
      _$$_UtilSentenceFromJson(json);

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
  @JsonKey()
  final bool giveUp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UtilSentence(text: $text, properNoun: $properNoun, hasCollected: $hasCollected, giveUp: $giveUp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UtilSentence'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('properNoun', properNoun))
      ..add(DiagnosticsProperty('hasCollected', hasCollected))
      ..add(DiagnosticsProperty('giveUp', giveUp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UtilSentence &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.properNoun, properNoun) ||
                other.properNoun == properNoun) &&
            (identical(other.hasCollected, hasCollected) ||
                other.hasCollected == hasCollected) &&
            (identical(other.giveUp, giveUp) || other.giveUp == giveUp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, properNoun, hasCollected, giveUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UtilSentenceCopyWith<_$_UtilSentence> get copyWith =>
      __$$_UtilSentenceCopyWithImpl<_$_UtilSentence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UtilSentenceToJson(
      this,
    );
  }
}

abstract class _UtilSentence implements UtilSentence {
  const factory _UtilSentence(
      {final String text,
      final String properNoun,
      final bool hasCollected,
      final bool giveUp}) = _$_UtilSentence;

  factory _UtilSentence.fromJson(Map<String, dynamic> json) =
      _$_UtilSentence.fromJson;

  @override
  String get text;
  @override
  String get properNoun;
  @override
  bool get hasCollected;
  @override
  bool get giveUp;
  @override
  @JsonKey(ignore: true)
  _$$_UtilSentenceCopyWith<_$_UtilSentence> get copyWith =>
      throw _privateConstructorUsedError;
}
