package gui;
import defold.Go;
import defold.Msg;
import defold.types.Message;
import defold.types.Url;
import defold.support.GuiScript;
import defold.Go.GoMessages;
import defold.Gui;
private typedef GuiSettingData = {    
}

class GuiSetting extends GuiScript<GuiSettingData> {
	override function init(self:GuiSettingData) {
	}

	override function update(self:GuiSettingData, dt:Float):Void {}

	override function on_message<T>(self:GuiSettingData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiSettingData):Void {
	}

	override function on_reload(self:GuiSettingData):Void {}

}