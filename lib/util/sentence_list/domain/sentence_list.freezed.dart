// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sentence_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UtilSentenceList _$UtilSentenceListFromJson(Map<String, dynamic> json) {
  return _UtilSentenceList.fromJson(json);
}

/// @nodoc
mixin _$UtilSentenceList {
  List<UtilSentence> get sentenceList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UtilSentenceListCopyWith<UtilSentenceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilSentenceListCopyWith<$Res> {
  factory $UtilSentenceListCopyWith(
          UtilSentenceList value, $Res Function(UtilSentenceList) then) =
      _$UtilSentenceListCopyWithImpl<$Res, UtilSentenceList>;
  @useResult
  $Res call({List<UtilSentence> sentenceList});
}

/// @nodoc
class _$UtilSentenceListCopyWithImpl<$Res, $Val extends UtilSentenceList>
    implements $UtilSentenceListCopyWith<$Res> {
  _$UtilSentenceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentenceList = null,
  }) {
    return _then(_value.copyWith(
      sentenceList: null == sentenceList
          ? _value.sentenceList
          : sentenceList // ignore: cast_nullable_to_non_nullable
              as List<UtilSentence>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UtilSentenceListCopyWith<$Res>
    implements $UtilSentenceListCopyWith<$Res> {
  factory _$$_UtilSentenceListCopyWith(
          _$_UtilSentenceList value, $Res Function(_$_UtilSentenceList) then) =
      __$$_UtilSentenceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UtilSentence> sentenceList});
}

/// @nodoc
class __$$_UtilSentenceListCopyWithImpl<$Res>
    extends _$UtilSentenceListCopyWithImpl<$Res, _$_UtilSentenceList>
    implements _$$_UtilSentenceListCopyWith<$Res> {
  __$$_UtilSentenceListCopyWithImpl(
      _$_UtilSentenceList _value, $Res Function(_$_UtilSentenceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentenceList = null,
  }) {
    return _then(_$_UtilSentenceList(
      sentenceList: null == sentenceList
          ? _value._sentenceList
          : sentenceList // ignore: cast_nullable_to_non_nullable
              as List<UtilSentence>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UtilSentenceList
    with DiagnosticableTreeMixin
    implements _UtilSentenceList {
  const _$_UtilSentenceList({final List<UtilSentence> sentenceList = const []})
      : _sentenceList = sentenceList;

  factory _$_UtilSentenceList.fromJson(Map<String, dynamic> json) =>
      _$$_UtilSentenceListFromJson(json);

  final List<UtilSentence> _sentenceList;
  @override
  @JsonKey()
  List<UtilSentence> get sentenceList {
    if (_sentenceList is EqualUnmodifiableListView) return _sentenceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentenceList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UtilSentenceList(sentenceList: $sentenceList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UtilSentenceList'))
      ..add(DiagnosticsProperty('sentenceList', sentenceList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UtilSentenceList &&
            const DeepCollectionEquality()
                .equals(other._sentenceList, _sentenceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sentenceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UtilSentenceListCopyWith<_$_UtilSentenceList> get copyWith =>
      __$$_UtilSentenceListCopyWithImpl<_$_UtilSentenceList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UtilSentenceListToJson(
      this,
    );
  }
}

abstract class _UtilSentenceList implements UtilSentenceList {
  const factory _UtilSentenceList({final List<UtilSentence> sentenceList}) =
      _$_UtilSentenceList;

  factory _UtilSentenceList.fromJson(Map<String, dynamic> json) =
      _$_UtilSentenceList.fromJson;

  @override
  List<UtilSentence> get sentenceList;
  @override
  @JsonKey(ignore: true)
  _$$_UtilSentenceListCopyWith<_$_UtilSentenceList> get copyWith =>
      throw _privateConstructorUsedError;
}
