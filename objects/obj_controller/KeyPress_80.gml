/// @description Insert description here
// You can write your code in this editor
// Key Press 'P' Event


if (instance_exists(obj_pause)) {
    if (!obj_pause.show_menu) {
        obj_pause.show_menu = true;
        instance_deactivate_all(true);
        instance_activate_object(obj_pause);
        // Activate other essential objects or layers, if necessary
        // instance_activate_layer("EssentialLayer");
    } else {
        obj_pause.show_menu = false;
        instance_activate_all();
    }
} else {
 
    var pause_instance = instance_create_layer(x, y, "Instances", obj_pause);
    pause_instance.show_menu = true;
    instance_deactivate_all(true);
    instance_activate_object(pause_instance);
}
