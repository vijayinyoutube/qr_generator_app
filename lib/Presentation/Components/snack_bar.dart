import 'package:flutter/material.dart';

ScaffoldFeatureController buildErrorLayout(context, data) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data)));
