import 'upload.dart';

export 'upload.dart' show Upload;

Upload uploadFromJson(dynamic data) => Upload(data);
dynamic uploadToJson(Upload upload) => upload.file;
