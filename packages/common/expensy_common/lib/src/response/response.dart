class ExpensyCommonResponse {
  List<dynamic> _metaDataList = [];
  bool _isHaveError = false;
  bool _isSignoutFailed = false;
  bool _isSignOutSuccess = false;

  void addMetaData(dynamic metaData){
    _metaDataList.add(metaData);
  }

  List<dynamic> getMetaDataList(){
    return _metaDataList;
  }

  void setIsHaveError(bool isHaveError){
    _isHaveError = isHaveError;
  }

  bool isHaveError(){
    return _isHaveError;
  }

  void setIsSignOutFailed(bool isSignOutFailed){
    _isSignoutFailed = isSignOutFailed;
  }

  bool isSignOutFailed(){
    return _isSignoutFailed;
  }

  void setIsSignOutSuccess(bool isSignOutSuccess){
    _isSignOutSuccess = isSignOutSuccess;
  }

  bool isSignOutSuccess(){
    return _isSignOutSuccess;
  }


}