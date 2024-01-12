import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_moveon/screen/Implementations/bloc_practice/bloc_practice_widget/bloc/event.dart';
import 'bloc_practice_widget/bloc/bloc.dart';
import 'bloc_practice_widget/post_repo.dart';
import 'bloc_practice_widget/post_ui.dart';

@RoutePage()
class BlocPractice extends StatelessWidget {
  const BlocPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<PostRepo>(
      create: (context) => PostRepo(),
      child: BlocProvider(
        create: (context) => PostBloc(context.read<PostRepo>())..add(FetchPostsEvent()),
        child: const PostUi(),
      ),
    );
  }
}
