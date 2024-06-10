package menus;
import defold.Go.GoMessages;
import defold.Msg;
import Defold.hash;
import defold.support.Script;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

private typedef ReportsData = {}

class Reports extends Script<ReportsData> {
	override function init(self:ReportsData) {
	Msg.post(".", GoMessages.acquire_input_focus);
		      }

	override function update(self:ReportsData, dt:Float):Void {}

	override function on_message<T>(self:ReportsData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function on_input(self:ReportsData, action_id:Hash, action:ScriptOnInputAction):Bool {
		return false;
	}

	override function final_(self:ReportsData):Void {}

	override function on_reload(self:ReportsData):Void {}
}
