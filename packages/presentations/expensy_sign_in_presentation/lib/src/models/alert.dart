  import 'package:equatable/equatable.dart';

  class ExpensyAlert extends Equatable{
      bool? _isVisible;
      bool? _isSuccess;
      bool? _isWarning;
      bool? _isError;
      String? _content;

      ExpensyAlert({
        bool? isVisible,
        bool? isSuccess,
        bool? isWarning,
        bool? isError,
        String? content
      })
      :_isVisible = isVisible ?? false,
      _isWarning = isWarning ?? false,
      _isSuccess = isSuccess ?? false,
      _isError = isError ?? false,
      _content = content ?? "";

      ExpensyAlert copyWith({
        bool? isVisible,
        bool? isSuccess,
        bool? isWarning,
        bool? isError,
        String? content
      }){
        return ExpensyAlert(
          isVisible: isVisible ?? _isVisible,
          isSuccess: isSuccess ?? _isSuccess,
          isError: isError ?? _isError,
          isWarning: isWarning ?? _isWarning,
          content: content ?? _content
        );
      }

      String getContent(){
        return _content ?? "";
      }

      bool isError(){
        return _isError ?? false;
      }

      bool isSuccess(){
        return _isSuccess ?? false;
      }

      bool isWarning(){
        return _isWarning ?? false;
      }

      bool isVisible(){
        return _isVisible ?? false;
      }

      @override
      List<Object?> get props => [_isVisible,_isError,_isSuccess,_isWarning,_content];
  }