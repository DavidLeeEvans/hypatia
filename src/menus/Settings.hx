package menus;
import defold.Go.GoMessages;
import defold.Msg;
import Defold.hash;
import defold.support.Script;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

private typedef SettingsData = {}

class Settings extends Script<SettingsData> {
	override function init(self:SettingsData) {
	Msg.post(".", GoMessages.acquire_input_focus);
}

	override function update(self:SettingsData, dt:Float):Void {}

	override function on_message<T>(self:SettingsData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function on_input(self:SettingsData, action_id:Hash, action:ScriptOnInputAction):Bool {
		return false;
	}

	override function final_(self:SettingsData):Void {}

	override function on_reload(self:SettingsData):Void {}
}
