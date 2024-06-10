package menus;
import defold.Go.GoMessages;
import defold.Msg;
import Defold.hash;
import defold.support.Script;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

private typedef InfoData = {}

class Info extends Script<InfoData> {
	override function init(self:InfoData) {
	Msg.post(".", GoMessages.acquire_input_focus);
}

	override function update(self:InfoData, dt:Float):Void {}

	override function on_message<T>(self:InfoData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function on_input(self:InfoData, action_id:Hash, action:ScriptOnInputAction):Bool {
		return false;
	}

	override function final_(self:InfoData):Void {}

	override function on_reload(self:InfoData):Void {}
}
