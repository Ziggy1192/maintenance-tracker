// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller.js"
application.register("hello", HelloController)

import ServiceEquipmentController from "./service_equipment_controller.js"
application.register("service-equipment", ServiceEquipmentController)

import MapController from "./map_controller.js"
application.register("map", MapController)

import TasksController from "./tasks_controller.js"
application.register("tasks", TasksController)
