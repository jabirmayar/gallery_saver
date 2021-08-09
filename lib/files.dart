import 'package:path/path.dart'as p;

const List<String> videoFormats = [
  '.mp4',
  '.mov',
  '.avi',
  '.wmv',
  '.3gp',
  '.mkv',
  '.flv'
];
const List<String> imageFormats = [
  '.jpeg',
  '.png',
  '.jpg',
  '.gif',
  '.webp',
  '.tif',
  '.heic'
  '.pdf' 
  '.doc'
  '.docx'
  '.xls'
  '.xlsx' 
];
const http = 'http';

bool isLocalFilePath(String path) {
  Uri uri = Uri.parse(path);
  return !uri.scheme.contains(http);
}
bool isVideo(String path) {
  bool isItVideo = false;
  videoFormats.forEach((videoFormats) {
    if (path.toLowerCase().contains(videoFormats)) isItVideo = true;
  });
  return isItVideo;
}

bool isImage(String path) {
  bool isItImage = false;
  imageFormats.forEach((imageFormats) {
    if (path.toLowerCase().contains(imageFormats)) isItImage = true;
  });
  return isItImage;
}
