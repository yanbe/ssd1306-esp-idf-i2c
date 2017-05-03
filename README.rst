Sample code for driving 128x64 OLED display with SSD1306 driver via ESP-IDF's I2C master driver
====================

See main code main.c_.

----------
About
----------

This sample code implement procedures to read values from 128x64 OLED display with SSD1306 driver via ESP-IDF's I2C master driver. It supports all features decribed in `Solomon Systech's SSD1306 datasheet`_.

----------
For local setup
----------

For your local setup, connect SDI pin to GPIO 15 pin and the SCK to GPIO 2 pin as they are default ports (I2C_SDA, I2C_SCL) for I2C master according to `ESP32 datasheet`_, C.4. IO_MUX, Page 49.

Be aware about there are serveal models on 128x64 OLED display. One model works with SPI/I2C another model works I2C only. This code works the version with (GND, VDD, SCK, SDA) pins supports I2C only (not SPI). Perhaps your model has slightly different but it should works.

If it does not work, please check your circit. Consider insert 10k ohm pull-up registors on between 3.3v power supply and (SDA, SCK) pins respectively, as OLED display consumes larger current comparing with other tiny I2C sensors. In my case, 10k ohm pull-up registors stabilized voltage level of clock and SDA and it worked.

.. _main.c: https://github.com/yanbe/bme280-esp-idf-i2c/blob/master/main/main.c
.. _ESP32 datasheet: https://www.espressif.com/sites/default/files/documentation/esp32_datasheet_en.pdf
.. _Solomon Systech's SSD1306 datasheet: https://www.robot-r-us.com/e/986-ssd1306-datasheet-for-096-oled.html
