  import 'package:flutter/material.dart';
import 'package:islami_app/core/networking/api_error_model.dart';

Center setupError(ApiErrorModel apiErrorModel) {
    return Center(
      child: Text(
        apiErrorModel.status.toString(),
        style: const TextStyle(color: Colors.red, fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }