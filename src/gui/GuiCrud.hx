package gui;

import Defold.hash;
import defold.Gui;
import defold.Sound;
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
	var exit:GuiNode;
	//-----text----------
	var product_label:GuiNode;
	var artifact_label:GuiNode;
	var manufact_label:GuiNode;
}

class GuiCRUD extends GuiScript<GuiCRUDData> {
	override function init(self:GuiCRUDData) {
		self.state = 0;
		self.product = Gui.get_node("product");
		self.artifact = Gui.get_node("artifact");
		self.manufact = Gui.get_node("manufact");
		// ------
		self.search = Gui.get_node("search");
		self.plus = Gui.get_node("plus");
		self.minus = Gui.get_node("minus");
		self.exit = Gui.get_node("exit");
		//-------------
		self.artifact_label = Gui.get_node("artifact_label");
		self.manufact_label = Gui.get_node("manufact_label");
		self.product_label = Gui.get_node("product_label");
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
		_on_off_product(self, true);
		_on_off_product(self, true);
	}

	private function on_artifact_press(self:GuiCRUDData):Void {
		trace('artifact press');
		if (self.state == 2)
			return;
		self.state = 2;
		_on_off_product(self, true);
		_on_off_product(self, true);
		_on_off_product(self, true);
	}

	private function on_manufact_press(self:GuiCRUDData):Void {
		trace('manufact press');
		if (self.state == 3)
			return;
		self.state = 3;
		_on_off_product(self, true);
		_on_off_product(self, true);
		_on_off_product(self, true);
	}

	private function _on_off_product(self:GuiCRUDData, state:Bool):Void {}

	private function _on_off_artifact(self:GuiCRUDData, state:Bool):Void {}

	private function _on_off_manufact(self:GuiCRUDData, state:Bool):Void {}
}
