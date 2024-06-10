package gui;
import defold.Go;
import defold.Msg;
import defold.types.Message;
import defold.types.Url;
import defold.support.GuiScript;
import defold.Go.GoMessages;
import defold.Gui;
private typedef GuiPlannerData = {   
}

class GuiPlanner extends GuiScript<GuiPlannerData> {
	override function init(self:GuiPlannerData) {
	}

	override function update(self:GuiPlannerData, dt:Float):Void {}

	override function on_message<T>(self:GuiPlannerData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiPlannerData):Void {
	}

	override function on_reload(self:GuiPlannerData):Void {}

}