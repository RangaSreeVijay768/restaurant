// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attach_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttachImageState {
  String? get fileId => throw _privateConstructorUsedError;
  String? get imageType => throw _privateConstructorUsedError;
  String? get entity => throw _privateConstructorUsedError;
  String? get attachImageResponse => throw _privateConstructorUsedError;
  BooleanStatus get attachImageStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? fileId, String? imageType, String? entity,
            String? attachImageResponse, BooleanStatus attachImageStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? fileId, String? imageType, String? entity,
            String? attachImageResponse, BooleanStatus attachImageStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? fileId, String? imageType, String? entity,
            String? attachImageResponse, BooleanStatus attachImageStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachImageStateCopyWith<AttachImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachImageStateCopyWith<$Res> {
  factory $AttachImageStateCopyWith(
          AttachImageState value, $Res Function(AttachImageState) then) =
      _$AttachImageStateCopyWithImpl<$Res, AttachImageState>;
  @useResult
  $Res call(
      {String? fileId,
      String? imageType,
      String? entity,
      String? attachImageResponse,
      BooleanStatus attachImageStatus});
}

/// @nodoc
class _$AttachImageStateCopyWithImpl<$Res, $Val extends AttachImageState>
    implements $AttachImageStateCopyWith<$Res> {
  _$AttachImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = freezed,
    Object? imageType = freezed,
    Object? entity = freezed,
    Object? attachImageResponse = freezed,
    Object? attachImageStatus = null,
  }) {
    return _then(_value.copyWith(
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      attachImageResponse: freezed == attachImageResponse
          ? _value.attachImageResponse
          : attachImageResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      attachImageStatus: null == attachImageStatus
          ? _value.attachImageStatus
          : attachImageStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AttachImageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fileId,
      String? imageType,
      String? entity,
      String? attachImageResponse,
      BooleanStatus attachImageStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AttachImageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = freezed,
    Object? imageType = freezed,
    Object? entity = freezed,
    Object? attachImageResponse = freezed,
    Object? attachImageStatus = null,
  }) {
    return _then(_$InitialImpl(
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      attachImageResponse: freezed == attachImageResponse
          ? _value.attachImageResponse
          : attachImageResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      attachImageStatus: null == attachImageStatus
          ? _value.attachImageStatus
          : attachImageStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.fileId,
      this.imageType,
      this.entity,
      this.attachImageResponse,
      this.attachImageStatus = BooleanStatus.initial});

  @override
  final String? fileId;
  @override
  final String? imageType;
  @override
  final String? entity;
  @override
  final String? attachImageResponse;
  @override
  @JsonKey()
  final BooleanStatus attachImageStatus;

  @override
  String toString() {
    return 'AttachImageState.initial(fileId: $fileId, imageType: $imageType, entity: $entity, attachImageResponse: $attachImageResponse, attachImageStatus: $attachImageStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.attachImageResponse, attachImageResponse) ||
                other.attachImageResponse == attachImageResponse) &&
            (identical(other.attachImageStatus, attachImageStatus) ||
                other.attachImageStatus == attachImageStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileId, imageType, entity,
      attachImageResponse, attachImageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? fileId, String? imageType, String? entity,
            String? attachImageResponse, BooleanStatus attachImageStatus)
        initial,
  }) {
    return initial(
        fileId, imageType, entity, attachImageResponse, attachImageStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? fileId, String? imageType, String? entity,
            String? attachImageResponse, BooleanStatus attachImageStatus)?
        initial,
  }) {
    return initial?.call(
        fileId, imageType, entity, attachImageResponse, attachImageStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? fileId, String? imageType, String? entity,
            String? attachImageResponse, BooleanStatus attachImageStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          fileId, imageType, entity, attachImageResponse, attachImageStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AttachImageState {
  const factory _Initial(
      {final String? fileId,
      final String? imageType,
      final String? entity,
      final String? attachImageResponse,
      final BooleanStatus attachImageStatus}) = _$InitialImpl;

  @override
  String? get fileId;
  @override
  String? get imageType;
  @override
  String? get entity;
  @override
  String? get attachImageResponse;
  @override
  BooleanStatus get attachImageStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
