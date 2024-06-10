package menus;
import defold.Go.GoMessages;
import defold.Msg;
import Defold.hash;
import defold.support.Script;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

private typedef SearchData = {}

class Search extends Script<SearchData> {
	override function init(self:SearchData) {
	Msg.post(".", GoMessages.acquire_input_focus);
}

	override function update(self:SearchData, dt:Float):Void {}

	override function on_message<T>(self:SearchData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function on_input(self:SearchData, action_id:Hash, action:ScriptOnInputAction):Bool {
		return false;
	}

	override function final_(self:SearchData):Void {}

	override function on_reload(self:SearchData):Void {}
}
