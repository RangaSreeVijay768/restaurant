import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/menu/repo/menu_repo.dart';
import 'package:restaurant_pos/app/menu/repo/models/create_menu_item/create_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/disable_menu_item/disable_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_all_categories/get_all_categories_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_all_categories/get_all_categories_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_item/get_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_item/get_menu_item_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_items_by_menu/get_menu_items_by_menu_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_items_by_menu/get_menu_items_by_menu_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/menu_get_all_menu_items/menu_get_all_menu_items_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/menu_get_all_menu_items/menu_get_all_menu_items_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/update_menu_item/update_menu_item_request.dart';

@singleton
class MenuService {
  late MenuRepo menuRepo;

  MenuService() {
    this.menuRepo = GetIt.instance<MenuRepo>();
  }

  Future<List<MenuGetAllMenuItemsResponse>> menuGetAllMenuItems(
      MenuGetAllMenuItemsRequest menuGetAllMenuItemsRequest) {
    return menuRepo.menuGetAllMenuItems(menuGetAllMenuItemsRequest);
  }

  Future<List<GetAllCategoriesResponse>> getAllCategories(
      GetAllCategoriesRequest getAllCategoriesRequest) {
    return menuRepo.getAllCategories(getAllCategoriesRequest);
  }

  Future<List<GetMenuItemsByMenuResponse>> getMenuItemsByMenu(
      GetMenuItemsByMenuRequest request) {
    return menuRepo.getMenuItemsByMenu(request);
  }

  Future<GetMenuItemResponse> getMenuItem(
      GetMenuItemRequest request) {
    return menuRepo.getMenuItem(request);
  }

  Future<String> createMenuItem(CreateMenuItemRequest request) {
    return menuRepo.createMenuItem(request);
  }

  Future<void> updateMenuItem(UpdateMenuItemRequest request) {
    return menuRepo.updateMenuItem(request);
  }

  Future<void> disableMenuItem(DisableMenuItemRequest request) {
    return menuRepo.disableMenuItem(request);
  }
}
