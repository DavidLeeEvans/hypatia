package gui;
import defold.Go;
import defold.Msg;
import defold.types.Message;
import defold.types.Url;
import defold.support.GuiScript;
import defold.Go.GoMessages;
import defold.Gui;
private typedef GuiReportData = {   
}

class GuiReport extends GuiScript<GuiReportData> { 
	override function init(self:GuiReportData) {
	}

	override function update(self:GuiReportData, dt:Float):Void {}

	override function on_message<T>(self:GuiReportData, message_id:Message<T>, message:T, sender:Url):Void {
		switch (message_id) {}
	}

	override function final_(self:GuiReportData):Void {
	}

	override function on_reload(self:GuiReportData):Void {}

}