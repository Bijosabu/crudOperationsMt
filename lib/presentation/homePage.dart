// ignore_for_file: library_private_types_in_public_api

import 'package:crudoperationsmt/application/UserList/bloc/user_list_bloc.dart';
import 'package:crudoperationsmt/presentation/util/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        title: const Text(
          'UserList',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
            child: Icon(
              Icons.people,
              size: 42,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                BlocProvider.of<UserListBloc>(context)
                    .add(const UserListEvent.getUserList());
              },
              child: const Text('Load user data'),
            ),
          ),
          BlocBuilder<UserListBloc, UserListState>(
            builder: (context, state) {
              if (state.isError) {
                return const Center(
                  child: Text('Error loading data'),
                );
              } else if (state.isLoading && state.userListModel.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.userListModel.isEmpty) {
                return const SizedBox();
              } else {
                return Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: state.userListModel.length + 1,
                    itemBuilder: (context, index) {
                      if (index < state.userListModel.length) {
                        return UserList(
                          index: index,
                          userName: state.userListModel[index].name,
                        );
                      } else if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return Center(
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<UserListBloc>(context)
                                  .add(const UserListEvent.loadMore());
                            },
                            child: const Text('Load more'),
                          ),
                        );
                      }
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
