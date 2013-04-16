| Led    | Name      |                                                                                     |
| ------ | --------- | ----------------------------------------------------------------------------------- |
| LED[0] | usb_error | turns on when there is any over flow or under flow in usb fifos... not necessarily critical error. |
| LED[1] | ram_error / jpeg_error | critical error. usually systems will not work. if it cant recover its self. if error is in RAM a reset is required. |
| LED[2] | jpeg_busy | if blinking shows the activity in jpeg encoder. if off means encoder is off if constant on means waiting for either input or space in out put(usb) fifo. |
| LED[3] | vsync     | vertical sync of HDMI/DVI signal.                                                   |
| LED[4] | rgb_de;   | data enable signal of HDMI/DVI signal.                                              |
| LED[5] | (flagB)   | cypress chip fifo flags blinking shows activity between fpga and cypress chip.      |
| LED[6] | (flagC)   | same as above                                                                       |
| Led[7] |           | if high after toggling sw0 means external monitor is DVI if low means external monitor is HDMI |
| ------ | --------- | ----------------------------------------------------------------------------------- |

