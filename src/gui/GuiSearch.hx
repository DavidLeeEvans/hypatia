package gui;
import defold.Go;
import defold.Msg;
import defold.types.Message;
import defold.types.Url;
import defold.support.GuiScript;
import defold.Go.GoMessages;
import defold.Gui;
private typedef GuiSearchData = {   
}

class GuiSearch extends GuiScript<GuiSearchData> {
	override function init(self:GuiSearchData) {
	}

	override function update(self:GuiSearchData, dt:Float):Void {}

	override function on_message<T>(self:GuiSearchData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiSearchData):Void {
	}

	override function on_reload(self:GuiSearchData):Void {}

}