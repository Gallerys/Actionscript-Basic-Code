import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextField;
import flash.text.TextFormat;

// Create a Sprite container
var container:Sprite = new Sprite();
container.x = 100;
container.y = 100;
addChild(container);

// Create a TextField for the button label
var label:TextField = new TextField();
label.text = "Click Me!";
label.selectable = false;
var textFormat:TextFormat = new TextFormat();
textFormat.size = 20;
textFormat.color = 0x000000; // Black color
label.setTextFormat(textFormat);
label.width = label.textWidth + 5;
label.height = label.textHeight + 5;
label.x = (container.width - label.width) / 2;
label.y = (container.height - label.height) / 2;
container.addChild(label);

// Create a clickable area
container.buttonMode = true;
container.useHandCursor = true;

// Add a click event listener
container.addEventListener(MouseEvent.CLICK, onClick);

// Click event handler
function onClick(event:MouseEvent):void {
    label.text = "Clicked!";
    container.removeEventListener(MouseEvent.CLICK, onClick); // Remove the listener after clicking
}
