import 'package:flutter_task/model/model.dart';

abstract class ProblemsRepository {
  Future<List<AllProblem>> getAllProblem();
}
