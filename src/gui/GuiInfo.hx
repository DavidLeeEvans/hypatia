package gui;
import defold.Go;
import defold.Msg;
import defold.types.Message;
import defold.types.Url;
import defold.support.GuiScript;
import defold.Go.GoMessages;
import defold.Gui;
private typedef GuiInfoData = {   
}

class GuiInfo extends GuiScript<GuiInfoData> {
	override function init(self:GuiInfoData) {
	}

	override function update(self:GuiInfoData, dt:Float):Void {}

	override function on_message<T>(self:GuiInfoData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiInfoData):Void {
	}

	override function on_reload(self:GuiInfoData):Void {}

}