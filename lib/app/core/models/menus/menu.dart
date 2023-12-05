import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/common/base_entity.dart';
import 'package:restaurant_pos/app/core/models/users/user_account.dart';

import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'menu.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Menu extends BaseEntity {
  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);
  UserAccount? createdBy;
  String? menuDescription;
  String? menuId;
  String? menuName;
  String? status;

  Menu(
      {this.createdBy,
      this.menuDescription,
      this.menuId,
      this.menuName,
      this.status,
      super.createdTime,
      super.lastUpdatedTime});
}

