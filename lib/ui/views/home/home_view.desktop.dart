import 'package:portfolio/ui/common/app_colors.dart';
import 'package:portfolio/ui/common/app_constants.dart';
import 'package:portfolio/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: Column(),
    );
  }
}
