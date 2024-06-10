package menus;
import defold.Go.GoMessages;
import defold.Msg;
import Defold.hash;
import defold.support.Script;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

private typedef HomeData = {}

class Home extends Script<HomeData> {
	override function init(self:HomeData) {
	Msg.post(".", GoMessages.acquire_input_focus);
}

	override function update(self:HomeData, dt:Float):Void {}

	override function on_message<T>(self:HomeData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function on_input(self:HomeData, action_id:Hash, action:ScriptOnInputAction):Bool {
		return false;
	}

	override function final_(self:HomeData):Void {}

	override function on_reload(self:HomeData):Void {}
}
