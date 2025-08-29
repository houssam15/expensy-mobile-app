import "package:equatable/equatable.dart";

class ExpensyCommonResponse extends Equatable{

  List<dynamic> _metaDataList = [];
  bool _isHaveUnknownError = false;
  bool _isSignOutFailed = false;
  bool _isSignOutSuccess = false;

  void addMetaData(dynamic metaData){
    _metaDataList.add(metaData);
  }

  List<dynamic> getMetaDataList(){
    return _metaDataList;
  }

  void setIsHaveUnknownError(bool isHaveUnknownError){
    _isHaveUnknownError = isHaveUnknownError;
  }

  bool isHaveUnknownError(){
    return _isHaveUnknownError;
  }

  void setIsSignOutFailed(bool isSignOutFailed){
    _isSignOutFailed = isSignOutFailed;
  }

  bool isSignOutFailed(){
    return _isSignOutFailed;
  }

  void setIsSignOutSuccess(bool isSignOutSuccess){
    _isSignOutSuccess = isSignOutSuccess;
  }

  bool isSignOutSuccess(){
    return _isSignOutSuccess;
  }

  @override
  List<Object?> get props => [_metaDataList,_isHaveUnknownError,_isSignOutFailed,_isSignOutSuccess];

}