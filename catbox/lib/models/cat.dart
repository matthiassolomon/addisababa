import 'package:meta/meta.dart';

class Cat {
  final int externalID;
  final String name;
  final String description;
  final String awaitUrl;
  final String location;
  final int likeCounter;
  final bool isAdopted;
  final List<String> pictures;
  final List<String> cattributes;

  Cat({
    @required this.externalID,
    @required this.name,
    @required this.description,
    @required this.awaitUrl,
    @required this.location,
    @required this.likeCounter,
    @required this.isAdopted,
    @required this.pictures,
    @required this.cattributes,
  });
}
