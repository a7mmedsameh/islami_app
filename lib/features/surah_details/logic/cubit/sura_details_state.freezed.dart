// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sura_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SuraDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuraDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SuraDetailsState()';
}


}

/// @nodoc
class $SuraDetailsStateCopyWith<$Res>  {
$SuraDetailsStateCopyWith(SuraDetailsState _, $Res Function(SuraDetailsState) __);
}


/// Adds pattern-matching-related methods to [SuraDetailsState].
extension SuraDetailsStatePatterns on SuraDetailsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SuraDetailsStateLoading value)?  suraDetailsStateLoading,TResult Function( SuraDetailsStateSuccess value)?  suraDetailsStateSuccess,TResult Function( SuraDetailsStateError value)?  suraDetailsStateError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SuraDetailsStateLoading() when suraDetailsStateLoading != null:
return suraDetailsStateLoading(_that);case SuraDetailsStateSuccess() when suraDetailsStateSuccess != null:
return suraDetailsStateSuccess(_that);case SuraDetailsStateError() when suraDetailsStateError != null:
return suraDetailsStateError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SuraDetailsStateLoading value)  suraDetailsStateLoading,required TResult Function( SuraDetailsStateSuccess value)  suraDetailsStateSuccess,required TResult Function( SuraDetailsStateError value)  suraDetailsStateError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SuraDetailsStateLoading():
return suraDetailsStateLoading(_that);case SuraDetailsStateSuccess():
return suraDetailsStateSuccess(_that);case SuraDetailsStateError():
return suraDetailsStateError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SuraDetailsStateLoading value)?  suraDetailsStateLoading,TResult? Function( SuraDetailsStateSuccess value)?  suraDetailsStateSuccess,TResult? Function( SuraDetailsStateError value)?  suraDetailsStateError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SuraDetailsStateLoading() when suraDetailsStateLoading != null:
return suraDetailsStateLoading(_that);case SuraDetailsStateSuccess() when suraDetailsStateSuccess != null:
return suraDetailsStateSuccess(_that);case SuraDetailsStateError() when suraDetailsStateError != null:
return suraDetailsStateError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  suraDetailsStateLoading,TResult Function( SuraDetailsResponseModel suraDetailsResponseModel)?  suraDetailsStateSuccess,TResult Function( ApiErrorModel apiErrorModel)?  suraDetailsStateError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SuraDetailsStateLoading() when suraDetailsStateLoading != null:
return suraDetailsStateLoading();case SuraDetailsStateSuccess() when suraDetailsStateSuccess != null:
return suraDetailsStateSuccess(_that.suraDetailsResponseModel);case SuraDetailsStateError() when suraDetailsStateError != null:
return suraDetailsStateError(_that.apiErrorModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  suraDetailsStateLoading,required TResult Function( SuraDetailsResponseModel suraDetailsResponseModel)  suraDetailsStateSuccess,required TResult Function( ApiErrorModel apiErrorModel)  suraDetailsStateError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SuraDetailsStateLoading():
return suraDetailsStateLoading();case SuraDetailsStateSuccess():
return suraDetailsStateSuccess(_that.suraDetailsResponseModel);case SuraDetailsStateError():
return suraDetailsStateError(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  suraDetailsStateLoading,TResult? Function( SuraDetailsResponseModel suraDetailsResponseModel)?  suraDetailsStateSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  suraDetailsStateError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SuraDetailsStateLoading() when suraDetailsStateLoading != null:
return suraDetailsStateLoading();case SuraDetailsStateSuccess() when suraDetailsStateSuccess != null:
return suraDetailsStateSuccess(_that.suraDetailsResponseModel);case SuraDetailsStateError() when suraDetailsStateError != null:
return suraDetailsStateError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SuraDetailsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SuraDetailsState.initial()';
}


}




/// @nodoc


class SuraDetailsStateLoading implements SuraDetailsState {
  const SuraDetailsStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuraDetailsStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SuraDetailsState.suraDetailsStateLoading()';
}


}




/// @nodoc


class SuraDetailsStateSuccess implements SuraDetailsState {
  const SuraDetailsStateSuccess(this.suraDetailsResponseModel);
  

 final  SuraDetailsResponseModel suraDetailsResponseModel;

/// Create a copy of SuraDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuraDetailsStateSuccessCopyWith<SuraDetailsStateSuccess> get copyWith => _$SuraDetailsStateSuccessCopyWithImpl<SuraDetailsStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuraDetailsStateSuccess&&(identical(other.suraDetailsResponseModel, suraDetailsResponseModel) || other.suraDetailsResponseModel == suraDetailsResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,suraDetailsResponseModel);

@override
String toString() {
  return 'SuraDetailsState.suraDetailsStateSuccess(suraDetailsResponseModel: $suraDetailsResponseModel)';
}


}

/// @nodoc
abstract mixin class $SuraDetailsStateSuccessCopyWith<$Res> implements $SuraDetailsStateCopyWith<$Res> {
  factory $SuraDetailsStateSuccessCopyWith(SuraDetailsStateSuccess value, $Res Function(SuraDetailsStateSuccess) _then) = _$SuraDetailsStateSuccessCopyWithImpl;
@useResult
$Res call({
 SuraDetailsResponseModel suraDetailsResponseModel
});




}
/// @nodoc
class _$SuraDetailsStateSuccessCopyWithImpl<$Res>
    implements $SuraDetailsStateSuccessCopyWith<$Res> {
  _$SuraDetailsStateSuccessCopyWithImpl(this._self, this._then);

  final SuraDetailsStateSuccess _self;
  final $Res Function(SuraDetailsStateSuccess) _then;

/// Create a copy of SuraDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? suraDetailsResponseModel = null,}) {
  return _then(SuraDetailsStateSuccess(
null == suraDetailsResponseModel ? _self.suraDetailsResponseModel : suraDetailsResponseModel // ignore: cast_nullable_to_non_nullable
as SuraDetailsResponseModel,
  ));
}


}

/// @nodoc


class SuraDetailsStateError implements SuraDetailsState {
  const SuraDetailsStateError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SuraDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuraDetailsStateErrorCopyWith<SuraDetailsStateError> get copyWith => _$SuraDetailsStateErrorCopyWithImpl<SuraDetailsStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuraDetailsStateError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'SuraDetailsState.suraDetailsStateError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SuraDetailsStateErrorCopyWith<$Res> implements $SuraDetailsStateCopyWith<$Res> {
  factory $SuraDetailsStateErrorCopyWith(SuraDetailsStateError value, $Res Function(SuraDetailsStateError) _then) = _$SuraDetailsStateErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SuraDetailsStateErrorCopyWithImpl<$Res>
    implements $SuraDetailsStateErrorCopyWith<$Res> {
  _$SuraDetailsStateErrorCopyWithImpl(this._self, this._then);

  final SuraDetailsStateError _self;
  final $Res Function(SuraDetailsStateError) _then;

/// Create a copy of SuraDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SuraDetailsStateError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
