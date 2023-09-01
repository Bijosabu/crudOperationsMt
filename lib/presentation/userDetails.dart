import 'package:crudoperationsmt/application/UserDetails/bloc/user_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailPage extends StatelessWidget {
  final int id;

  const UserDetailPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UserDetailsBloc>(context)
          .add(UserDetailsEvent.getDetailsById(id: id));
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error while loading data'),
              );
            } else if (state.userListModel.isEmpty) {
              return const CircularProgressIndicator();
            } else {
              // return const SizedBox();
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UserFields(
                    details: state.userListModel['name'],
                    heading: 'Name',
                  ),
                  const SizedBox(height: 16),
                  UserFields(
                    details: state.userListModel['email'],
                    heading: 'Email',
                  ),
                  const SizedBox(height: 16),
                  UserFields(
                    details: state.userListModel['gender'],
                    heading: 'Gender',
                  ),
                  const SizedBox(height: 16),
                  UserFields(
                    details: state.userListModel['status'],
                    heading: 'Status',
                  ),
                  const SizedBox(height: 16),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class UserFields extends StatelessWidget {
  final String heading;
  final String details;
  const UserFields({
    super.key,
    required this.details,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              details,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
