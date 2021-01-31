import 'package:flutter_app/models/projector_unsplash_model.dart';
class ProjectorUnsplashViewModel {
  ProjectorUnsplashModel _projectorUnsplashModel;

  ProjectorUnsplashViewModel({ProjectorUnsplashModel projectorUnsplashModel}) {
    this._projectorUnsplashModel = projectorUnsplashModel;
  }

  String get name {
    return _projectorUnsplashModel.name;
  }

  String get raw {
    return _projectorUnsplashModel.raw;
  }

  String get alt_description {
    return _projectorUnsplashModel.alt_description;
  }
}