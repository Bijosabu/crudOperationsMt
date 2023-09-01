// ignore_for_file: use_build_context_synchronously

import 'package:crudoperationsmt/application/UserList/bloc/user_list_bloc.dart';
import 'package:crudoperationsmt/presentation/updateUser.dart';
import 'package:crudoperationsmt/presentation/userDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserList extends StatelessWidget {
  final int index;
  final String userName;
  const UserList({super.key, required this.userName, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Column(
        children: [
          ListTile(
            title: Text(
              userName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<UserListBloc, UserListState>(
                builder: (context, state) {
                  if (state.isError) {
                    return const Center(
                      child: Text('Error loading data'),
                    );
                  } else if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateUserPage(
                                    id: state.userListModel[index].id,
                                    name: state.userListModel[index].name,
                                    email: state.userListModel[index].email,
                                    gender: state.userListModel[index].gender,
                                    status: state.userListModel[index].status,
                                  )),
                        );
                      },
                      child: const Text('Edit'),
                    );
                  }
                },
              ),
              BlocBuilder<UserListBloc, UserListState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDetailPage(
                            id: state.userListModel[index].id,
                          ),
                        ),
                      );
                    },
                    child: const Text('View'),
                  );
                },
              ),
              BlocBuilder<UserListBloc, UserListState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () async {
                      BlocProvider.of<UserListBloc>(context).add(
                          UserListEvent.deleteUser(
                              userId: state.userListModel[index].id));
                    },
                    child: const Text('Delete'),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
