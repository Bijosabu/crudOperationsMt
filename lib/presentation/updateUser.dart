// ignore_for_file: use_build_context_synchronously, must_be_immutable

import 'package:crudoperationsmt/domain/updateUser/update_user_repo.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UpdateUserPage)
class UpdateUserPage extends StatelessWidget {
  final int id;
  final String name;
  final String email;
  final String gender;
  final String status;
  UpdateUserPage({
    super.key,
    required this.name,
    required this.email,
    required this.gender,
    required this.status,
    required this.id,
  });
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();
  final UpdateUserRepository _updateUserRepository = UpdateUserRepository();

  @override
  Widget build(BuildContext context) {
    const kHeight20 = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Details'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              kHeight20,
              EditFields(
                controller: _nameController,
                hintText: name,
                labelText: name,
              ),
              kHeight20,
              EditFields(
                controller: _emailController,
                hintText: email,
                labelText: email,
              ),
              kHeight20,
              EditFields(
                controller: _genderController,
                hintText: gender,
                labelText: gender,
              ),
              kHeight20,
              EditFields(
                controller: _statusController,
                hintText: status,
                labelText: status,
              ),
              kHeight20,
              ElevatedButton(
                onPressed: () async {
                  final updatedData = {
                    'name': _nameController.text.isEmpty
                        ? name
                        : _nameController.text,
                    'email': _emailController.text.isEmpty
                        ? email
                        : _emailController.text,
                    'gender': _genderController.text.isEmpty
                        ? gender
                        : _genderController.text,
                    'status': _statusController.text.isEmpty
                        ? status
                        : _statusController.text,
                  };

                  final bool successOrFail = await _updateUserRepository
                      .updateUserDetails(id, updatedData);
                  if (successOrFail == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('User updated Successfully.'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Failed to update data.'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
                child: const Text('Update details'),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class EditFields extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  const EditFields(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20.0),
        labelText: labelText,
        hintText: hintText,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        fontFamily: "Poppins",
      ),
    );
  }
}
