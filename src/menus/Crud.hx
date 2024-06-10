package menus;
import defold.Go.GoMessages;
import defold.Msg;
import Defold.hash;
import defold.support.Script;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

private typedef CRUDData = {}

class CRUD extends Script<CRUDData> {
	override function init(self:CRUDData) {
	Msg.post(".", GoMessages.acquire_input_focus);
}

	override function update(self:CRUDData, dt:Float):Void {}

	override function on_message<T>(self:CRUDData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function on_input(self:CRUDData, action_id:Hash, action:ScriptOnInputAction):Bool {
		return false;
	}

	override function final_(self:CRUDData):Void {}

	override function on_reload(self:CRUDData):Void {}
}
