package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.foursomethingdev.kaoguru.flutter_plugin.FlutterPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterPlugin.registerWith(registry.registrarFor("com.foursomethingdev.kaoguru.flutter_plugin.FlutterPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
