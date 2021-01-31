import 'package:flutter/material.dart';
import 'package:flutter_app/view_model/projector_unsplash_view_model.dart';
import 'package:flutter_app/models/projector_unsplash_model.dart';
import 'package:flutter_app/services/projector_unsplash_model_service.dart';
class ProjectorUnsplashListViewModel with ChangeNotifier {
  List<ProjectorUnsplashViewModel> fotos = List<ProjectorUnsplashViewModel>();

  getFhotos() async {
    List<ProjectorUnsplashModel> list =
    await ProjectorUnsplashModelService().fetchFhotos();
    notifyListeners();
    fotos = list
        .map((e) => ProjectorUnsplashViewModel(projectorUnsplashModel: e))
        .toList();
  }
}