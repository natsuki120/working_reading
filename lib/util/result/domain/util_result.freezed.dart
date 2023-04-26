// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'util_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UtilResult _$UtilResultFromJson(Map<String, dynamic> json) {
  return _UtilResult.fromJson(json);
}

/// @nodoc
mixin _$UtilResult {
  int get percent => throw _privateConstructorUsedError;
  List<bool> get correctList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UtilResultCopyWith<UtilResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilResultCopyWith<$Res> {
  factory $UtilResultCopyWith(
          UtilResult value, $Res Function(UtilResult) then) =
      _$UtilResultCopyWithImpl<$Res, UtilResult>;
  @useResult
  $Res call({int percent, List<bool> correctList});
}

/// @nodoc
class _$UtilResultCopyWithImpl<$Res, $Val extends UtilResult>
    implements $UtilResultCopyWith<$Res> {
  _$UtilResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? correctList = null,
  }) {
    return _then(_value.copyWith(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      correctList: null == correctList
          ? _value.correctList
          : correctList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UtilResultCopyWith<$Res>
    implements $UtilResultCopyWith<$Res> {
  factory _$$_UtilResultCopyWith(
          _$_UtilResult value, $Res Function(_$_UtilResult) then) =
      __$$_UtilResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int percent, List<bool> correctList});
}

/// @nodoc
class __$$_UtilResultCopyWithImpl<$Res>
    extends _$UtilResultCopyWithImpl<$Res, _$_UtilResult>
    implements _$$_UtilResultCopyWith<$Res> {
  __$$_UtilResultCopyWithImpl(
      _$_UtilResult _value, $Res Function(_$_UtilResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? correctList = null,
  }) {
    return _then(_$_UtilResult(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      correctList: null == correctList
          ? _value._correctList
          : correctList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UtilResult with DiagnosticableTreeMixin implements _UtilResult {
  const _$_UtilResult(
      {this.percent = 0, final List<bool> correctList = const <bool>[]})
      : _correctList = correctList;

  factory _$_UtilResult.fromJson(Map<String, dynamic> json) =>
      _$$_UtilResultFromJson(json);

  @override
  @JsonKey()
  final int percent;
  final List<bool> _correctList;
  @override
  @JsonKey()
  List<bool> get correctList {
    if (_correctList is EqualUnmodifiableListView) return _correctList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_correctList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UtilResult(percent: $percent, correctList: $correctList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UtilResult'))
      ..add(DiagnosticsProperty('percent', percent))
      ..add(DiagnosticsProperty('correctList', correctList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UtilResult &&
            (identical(other.percent, percent) || other.percent == percent) &&
            const DeepCollectionEquality()
                .equals(other._correctList, _correctList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, percent, const DeepCollectionEquality().hash(_correctList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UtilResultCopyWith<_$_UtilResult> get copyWith =>
      __$$_UtilResultCopyWithImpl<_$_UtilResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UtilResultToJson(
      this,
    );
  }
}

abstract class _UtilResult implements UtilResult {
  const factory _UtilResult({final int percent, final List<bool> correctList}) =
      _$_UtilResult;

  factory _UtilResult.fromJson(Map<String, dynamic> json) =
      _$_UtilResult.fromJson;

  @override
  int get percent;
  @override
  List<bool> get correctList;
  @override
  @JsonKey(ignore: true)
  _$$_UtilResultCopyWith<_$_UtilResult> get copyWith =>
      throw _privateConstructorUsedError;
}
