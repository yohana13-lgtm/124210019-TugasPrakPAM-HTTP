import 'package:flutter/material.dart';
import 'package:pam124210019/api_data_source.dart';
import 'package:pam124210019/UserModel.dart';

class DetailUserPage extends StatelessWidget {
  final Data userData;

  DetailUserPage({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail'),
      ),
      body: _buildDetailUserBody(),
    );
  }

  Widget _buildDetailUserBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(userData.avatar!),
          ),
          SizedBox(height: 16),
          Text('${userData.firstName} ${userData.lastName}'),
          Text('${userData.email}'),
          // Add more user details as needed
        ],
      ),
    );
  }
}
