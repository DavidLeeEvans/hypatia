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

private typedef GuiCRUDData = {
	var state:Int;
	//-------
	var product:GuiNode;
	var artifact:GuiNode;
	var manufact:GuiNode;
	// ------
	var search:GuiNode;
	var plus:GuiNode;
	var minus:GuiNode;
	var modify:GuiNode;
	var exit:GuiNode;
	//-----text----------
	var product_label:GuiNode;
	var artifact_label:GuiNode;
	var manufact_label:GuiNode;
}

class GuiCRUD extends GuiScript<GuiCRUDData> {
	override function init(self:GuiCRUDData) {
		self.state = 0;
		// _on_off_product(self, true);
		// _on_off_artifact(self, true);
		// _on_off_manufact(self, true);
		self.product = Gui.get_node("product");
		self.artifact = Gui.get_node("artifact");
		self.manufact = Gui.get_node("manufact");
		// ------
		self.search = Gui.get_node("search");
		self.plus = Gui.get_node("plus");
		self.minus = Gui.get_node("minus");
		self.modify = Gui.get_node("modify");
		self.exit = Gui.get_node("exit");
		//-------------
		self.artifact_label = Gui.get_node("artifact_label");
		self.manufact_label = Gui.get_node("manufact_label");
		self.product_label = Gui.get_node("product_label");
		Gui.set_position(self.product, POS_ON_PRODUCT);
		Gui.set_position(self.artifact, POS_ON_ARTIFACT);
		Gui.set_position(self.manufact, POS_ON_MANUFACT);
		//
		Gui.set_position(self.search, POS_OFF_SEARCH);
		Gui.set_position(self.plus, POS_OFF_PLUS);
		Gui.set_position(self.minus, POS_OFF_MINUS);
		Gui.set_position(self.modify, POS_OFF_MODIFY);
		Gui.set_position(self.exit, POS_OFF_EXIT);
	}

	override function on_input(self:GuiCRUDData, action_id:Hash, action:ScriptOnInputAction):Bool {
		if (action_id == hash("touch") && action.released) {
			if (Gui.pick_node(self.product, action.x, action.y)) {
				Sound.play("/Sounds#click");
				on_product_press(self);
			} else if (Gui.pick_node(self.artifact, action.x, action.y)) {
				Sound.play("/Sounds#click");
				on_artifact_press(self);
			} else if (Gui.pick_node(self.manufact, action.x, action.y)) {
				Sound.play("/Sounds#click");
				on_manufact_press(self);
			}
		}
		return true;
	}

	override function update(self:GuiCRUDData, dt:Float):Void {}

	override function on_message<T>(self:GuiCRUDData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiCRUDData):Void {}

	override function on_reload(self:GuiCRUDData):Void {}

	private function on_product_press(self:GuiCRUDData):Void {
		trace('product press');
		if (self.state == 1)
			return;
		self.state = 1;
		_on_off_product(self, true);
		_on_off_artifact(self, false);
		_on_off_manufact(self, false);
	}

	private function on_artifact_press(self:GuiCRUDData):Void {
		trace('artifact press');
		if (self.state == 2)
			return;
		self.state = 2;
		_on_off_product(self, false);
		_on_off_artifact(self, true);
		_on_off_manufact(self, false);
	}

	private function on_manufact_press(self:GuiCRUDData):Void {
		trace('manufact press');
		if (self.state == 3)
			return;
		self.state = 3;
		_on_off_product(self, false);
		_on_off_artifact(self, false);
		_on_off_manufact(self, true);
	}

	private final ANIMAT_DURATION = 1.0;
	private final MINOR_ANIMAT_DURATION = 0.6;
	//
	private final POS_ON_PRODUCT = Vmath.vector3(200, 700, 0);
	private final POS_OFF_PRODUCT = Vmath.vector3(1200, 700, 0);
	//
	private final POS_ON_ARTIFACT = Vmath.vector3(200, 500, 0);
	private final POS_OFF_ARTIFACT = Vmath.vector3(1200, 500, 0);
	//
	private final POS_ON_MANUFACT = Vmath.vector3(200, 200, 0);
	private final POS_OFF_MANUFACT = Vmath.vector3(1200, 200, 0);
	//
	private final POS_ON_SEARCH = Vmath.vector3(600, 780, 0);
	private final POS_OFF_SEARCH = Vmath.vector3(1030, 780, 0);
	//
	private final POS_ON_EXIT = Vmath.vector3(725, 675, 0);
	private final POS_OFF_EXIT = Vmath.vector3(1030, 675, 0);
	//
	private final POS_ON_PLUS = Vmath.vector3(725, 600, 0);
	private final POS_OFF_PLUS = Vmath.vector3(1030, 600, 0);
	//
	private final POS_ON_MINUS = Vmath.vector3(725, 500, 0);
	private final POS_OFF_MINUS = Vmath.vector3(1030, 500, 0);
	//
	private final POS_ON_MODIFY = Vmath.vector3(725, 400, 0);
	private final POS_OFF_MODIFY = Vmath.vector3(1030, 400, 0);

	private function _on_off_product(self:GuiCRUDData, state:Bool):Void {
		if (state) {
			Gui.animate(self.product, GuiAnimateProprty.PROP_POSITION, POS_ON_PRODUCT, GuiEasing.EASING_LINEAR, ANIMAT_DURATION, 0);
			_search_on_off(self, true);
			// _add_on_off(self, true);
		} else {
			Gui.animate(self.product, GuiAnimateProprty.PROP_POSITION, POS_OFF_PRODUCT, GuiEasing.EASING_LINEAR, ANIMAT_DURATION, 0);
			_search_on_off(self, false);
			_add_on_off(self, false);
		}
	}

	private function _on_off_artifact(self:GuiCRUDData, state:Bool):Void {
		if (state) {
			Gui.animate(self.artifact, GuiAnimateProprty.PROP_POSITION, POS_ON_ARTIFACT, GuiEasing.EASING_LINEAR, ANIMAT_DURATION, 0);
			_search_on_off(self, true);
			_add_on_off(self, true);
		} else {
			Gui.animate(self.artifact, GuiAnimateProprty.PROP_POSITION, POS_OFF_ARTIFACT, GuiEasing.EASING_LINEAR, ANIMAT_DURATION, 0);
			_search_on_off(self, false);
			_add_on_off(self, false);
		}
	}

	private function _on_off_manufact(self:GuiCRUDData, state:Bool):Void {
		if (state) {
			Gui.animate(self.manufact, GuiAnimateProprty.PROP_POSITION, POS_ON_MANUFACT, GuiEasing.EASING_LINEAR, ANIMAT_DURATION, 0);
			_search_on_off(self, true);
			_add_on_off(self, true);
		} else {
			Gui.animate(self.manufact, GuiAnimateProprty.PROP_POSITION, POS_OFF_MANUFACT, GuiEasing.EASING_LINEAR, ANIMAT_DURATION, 0);
			_search_on_off(self, false);
			_add_on_off(self, false);
		}
	}

	private function _search_on_off(self:GuiCRUDData, state:Bool):Void {
		if (state) {
			Gui.animate(self.search, GuiAnimateProprty.PROP_POSITION, POS_ON_SEARCH, GuiEasing.EASING_LINEAR, MINOR_ANIMAT_DURATION, 0);
			_search_on_off(self, true);
			_add_on_off(self, true);
		} else {
			Gui.animate(self.search, GuiAnimateProprty.PROP_POSITION, POS_OFF_SEARCH, GuiEasing.EASING_LINEAR, MINOR_ANIMAT_DURATION, 0);
			_search_on_off(self, false);
			_add_on_off(self, false);
		}
	}

	private function _exit_on_off(self:GuiCRUDData, state:Bool):Void {}

	private function _add_on_off(self:GuiCRUDData, state:Bool):Void {
		if (state) {
			Gui.animate(self.plus, GuiAnimateProprty.PROP_POSITION, POS_ON_PLUS, GuiEasing.EASING_LINEAR, MINOR_ANIMAT_DURATION, 0);
		} else {
			Gui.animate(self.plus, GuiAnimateProprty.PROP_POSITION, POS_OFF_PLUS, GuiEasing.EASING_LINEAR, MINOR_ANIMAT_DURATION, 0);
		}
	}

	private function _subtract_on_off(self:GuiCRUDData, state:Bool):Void {}

	private function _modify_on_off(self:GuiCRUDData, state:Bool):Void {}
}
