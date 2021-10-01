import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'todo.g.dart';


@JsonSerializable(explicitToJson: true)
class Todo{
  Todo(this.id, this.userId, this.title, this.completed);
  @JsonKey(name : "id")
  int id;
  @JsonKey(name : "userId")
  int userId;
  @JsonKey(name : "title")
  String title;
  @JsonKey(name : "completed")
  bool completed;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}

