enum ExpensyFirebaseFirestoreExceptionCode {
  collectionNotFound,
  canGetDocuments,
  cantFilterDocuments,
  invalidDocumentId,
  documentNotFound,
  cantGetDocument
}

class ExpensyFirebaseFirestoreException implements Exception{
  ExpensyFirebaseFirestoreExceptionCode? _code;
  String? _message;
  List? _metaDataList;

  void setCode(ExpensyFirebaseFirestoreExceptionCode? code) => _code = code;
  void setMessage(String? message) => _message = message;
  void addMetaData(data) => _metaDataList?.any(data);

  ExpensyFirebaseFirestoreExceptionCode? getCode() => _code;
  String? getMessage() => _message;
  bool hasError() => _code!=null;

  @override
  String toString() => 'ExpensyFirebaseAuthException($_code): $_message';
}