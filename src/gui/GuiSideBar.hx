package gui;

import Defold.hash;
import defold.Gui;
import defold.Sound;
import defold.Vmath;
import defold.support.GuiScript;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

@:build(defold.support.MessageBuilder.build()) class GuiSideBarMessages {
	var select_home;
	var select_search;
	var select_crud;
	var select_report;
	var select_planner;
	var select_settings;
	var select_info;
}

private typedef GuiSideBarData = {
	var home:GuiNode;
	var search:GuiNode;
	var crud:GuiNode;
	var report:GuiNode;
	var planner:GuiNode;
	var settings:GuiNode;
	var info:GuiNode;
	var selector:GuiNode;
}

class GuiSideBar extends GuiScript<GuiSideBarData> {
	override function init(self:GuiSideBarData) {
		self.home = Gui.get_node("home");
		self.search = Gui.get_node("search");
		self.crud = Gui.get_node("crud");
		self.report = Gui.get_node("report");
		self.planner = Gui.get_node("planner");
		self.settings = Gui.get_node("settings");
		self.info = Gui.get_node("info");
		self.selector = Gui.get_node("selector");
	}

	override function update(self:GuiSideBarData, dt:Float):Void {}

	override function on_input(self:GuiSideBarData, action_id:Hash, action:ScriptOnInputAction):Bool {
		if (action_id == hash("touch") && action.released) {
			if (Gui.pick_node(self.home, action.x, action.y)) {
				trace('home press');
				Sound.play("/Sounds#click");
				Gui.set_position(self.selector, Vmath.vector3(65, 675, 0));
			} else if (Gui.pick_node(self.search, action.x, action.y)) {
				trace('search press');
				Sound.play("/Sounds#click");
				Gui.set_position(self.selector, Vmath.vector3(65, 575, 0));
			} else if (Gui.pick_node(self.crud, action.x, action.y)) {
				trace('crud press');
				Sound.play("/Sounds#click");
				Gui.set_position(self.selector, Vmath.vector3(65, 475, 0));
			} else if (Gui.pick_node(self.report, action.x, action.y)) {
				trace('report press');
				Sound.play("/Sounds#click");
				Gui.set_position(self.selector, Vmath.vector3(65, 375, 0));
			} else if (Gui.pick_node(self.planner, action.x, action.y)) {
				trace('planner press');
				Sound.play("/Sounds#click");
				Gui.set_position(self.selector, Vmath.vector3(65, 275, 0));
			} else if (Gui.pick_node(self.settings, action.x, action.y)) {
				trace('settings press');
				Sound.play("/Sounds#click");
				Gui.set_position(self.selector, Vmath.vector3(65, 175, 0));
			} else if (Gui.pick_node(self.info, action.x, action.y)) {
				trace('info press');
				Sound.play("/Sounds#click");
				Gui.set_position(self.selector, Vmath.vector3(65, 75, 0));
			}
		}
		return true;
	}

	override function on_message<T>(self:GuiSideBarData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiSideBarData):Void {}

	override function on_reload(self:GuiSideBarData):Void {}

	private function on_press(self:GuiSideBarData):Void {
		Sound.play("/sounds/#click");
	}
}
