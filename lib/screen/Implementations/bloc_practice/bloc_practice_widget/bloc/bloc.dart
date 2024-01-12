import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_moveon/screen/Implementations/bloc_practice/bloc_practice_widget/bloc/event.dart';
import 'package:training_moveon/screen/Implementations/bloc_practice/bloc_practice_widget/bloc/state.dart';

import '../post_repo.dart';

class PostBloc extends Bloc<PostEvent, PostsState>{

  int page = 1;
  PostRepo repo;
  ScrollController scrollController = ScrollController();
  bool isLoadingMore = false;

  PostBloc(this.repo) : super(InitState(null)){

    scrollController.addListener(() {
      add(LoadMoreEvent());
    });

    on<FetchPostsEvent>((event, emit) async{
      emit(PostLoadingState(null));
      var posts = await repo.fetchPosts(page);
      emit(PostSuccessState(posts: posts));
    });

    on<LoadMoreEvent>((event, emit) async{
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        isLoadingMore = true;
        page++;
        var posts = await repo.fetchPosts(page);
        emit(PostSuccessState(posts: [...state.posts, ...posts]));
      }
    });
  }
}