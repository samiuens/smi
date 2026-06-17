{
  smi.config.linearmouse.settings = builtins.fromJSON ''
    {
      "$schema" : "https://schema.linearmouse.app/0.11.2",
      "schemes" : [
        {
          "buttons" : {
            "universalBackForward" : true
          },
          "if" : {
            "device" : {
              "category" : "mouse",
              "productID" : "0xc547",
              "productName" : "USB Receiver",
              "vendorID" : "0x46d"
            }
          },
          "pointer" : {
            "acceleration" : 0,
            "speed" : 0.33
          },
          "scrolling" : {
            "reverse" : {
              "vertical" : true
            }
          }
        }
      ]
    }
  '';
}
