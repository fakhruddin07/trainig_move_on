import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_moveon/screen/Implementations/bloc_practice/bloc_practice_widget/bloc/bloc.dart';
import 'package:training_moveon/screen/Implementations/bloc_practice/bloc_practice_widget/bloc/state.dart';

class PostUi extends StatelessWidget {
  const PostUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostBloc, PostsState>(
        builder: (context, state) {
          if (state is PostLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostSuccessState) {
            var posts = state.posts;
            return ListView.builder(
              controller: context.read<PostBloc>().scrollController,
              shrinkWrap: true,
              itemCount: context.read<PostBloc>().isLoadingMore
                  ? posts.length + 1
                  :  posts.length,
              itemBuilder: (context, index) {
                if (index >= posts.length) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  var post = posts[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(index.toString()),
                      ),
                      title: Text(post['id'].toString()),
                      subtitle: Text(post['title']['rendered']),
                    ),
                  );
                }
              },
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
