package menus;
import defold.Go.GoMessages;
import defold.Msg;
import Defold.hash;
import defold.support.Script;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;
import defold.types.Message;
import defold.types.Url;

private typedef PlannerData = {}

class Planner extends Script<PlannerData> {
	override function init(self:PlannerData) {
	Msg.post(".", GoMessages.acquire_input_focus);
}

	override function update(self:PlannerData, dt:Float):Void {}

	override function on_message<T>(self:PlannerData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function on_input(self:PlannerData, action_id:Hash, action:ScriptOnInputAction):Bool {
		return false;
	}

	override function final_(self:PlannerData):Void {}

	override function on_reload(self:PlannerData):Void {}
}
