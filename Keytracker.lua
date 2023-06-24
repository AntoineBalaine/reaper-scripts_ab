
slider1:0<0,127,1>Midi Note Value
slider2:0<0,15,1{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}>Input Channel
slider3:0<0,1,1{Note On, Note Off}>Trigger

in_pin:none
out_pin:none

@init

noteOn = $x90;
noteOff = $x80;

@slider
inChannel = slider2;
noteTrig = slider3

@block

while (midirecv(offset,msg1,msg2,msg3)) ( 
    channel = msg1 & $x0F;
    onOffStatus = msg1 & $xF0; // 144 == Note On, 128 == Note Off

    trigTest = noteTrig == 0 ? (noteOn):(noteOff); // comparison value based on our note on/off setting

    channel == inChannel ? (
        trigTest == onOffStatus ? (
            slider1 = msg2;
        )
    );
    
    midisend(offset,msg1,msg2,msg3); // pass through
);
