package gui;
import defold.Go;
import defold.Msg;
import defold.types.Message;
import defold.types.Url;
import defold.support.GuiScript;
import defold.Go.GoMessages;
import defold.Gui;
private typedef GuiHomeData = {  
}

class GuiHome extends GuiScript<GuiHomeData> {
	override function init(self:GuiHomeData) {
	}

	override function update(self:GuiHomeData, dt:Float):Void {}

	override function on_message<T>(self:GuiHomeData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiHomeData):Void {
	}

	override function on_reload(self:GuiHomeData):Void {}

}