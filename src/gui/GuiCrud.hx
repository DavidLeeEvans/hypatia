package gui;
import defold.Go;
import defold.Msg;
import defold.types.Message;
import defold.types.Url;
import defold.support.GuiScript;
import defold.Go.GoMessages;
import defold.Gui;
private typedef GuiCRUDData = { 
}

class GuiCRUD extends GuiScript<GuiCRUDData> {
	override function init(self:GuiCRUDData) {
	}

	override function update(self:GuiCRUDData, dt:Float):Void {}

	override function on_message<T>(self:GuiCRUDData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiCRUDData):Void {
	}

	override function on_reload(self:GuiCRUDData):Void {}

}