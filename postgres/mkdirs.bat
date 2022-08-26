set ROOT=%CD%

rmdir /s /q data
if not exist data mkdir data

rmdir /s /q dump
if not exist dump mkdir dump

rmdir /s /q tablespace
if not exist %ROOT%\tablespace mkdir %ROOT%\tablespace
if not exist %ROOT%\tablespace\aisdata mkdir %ROOT%\tablespace\aisdata
if not exist %ROOT%\tablespace\aisindex mkdir %ROOT%\tablespace\aisindex
if not exist %ROOT%\tablespace\aisdata\tab_large mkdir %ROOT%\tablespace\aisdata\tab_large
if not exist %ROOT%\tablespace\aisdata\tab_medium mkdir %ROOT%\tablespace\aisdata\tab_medium
if not exist %ROOT%\tablespace\aisdata\tab_small mkdir %ROOT%\tablespace\aisdata\tab_small
if not exist %ROOT%\tablespace\aisdata\tab_lob mkdir %ROOT%\tablespace\aisdata\tab_lob
if not exist %ROOT%\tablespace\aisdata\jn mkdir %ROOT%\tablespace\aisdata\jn
if not exist %ROOT%\tablespace\aisindex\indlr mkdir %ROOT%\tablespace\aisindex\indlr
if not exist %ROOT%\tablespace\aisindex\indexs mkdir %ROOT%\tablespace\aisindex\indexs
if not exist %ROOT%\tablespace\aisindex\indpuk mkdir %ROOT%\tablespace\aisindex\indpuk
if not exist %ROOT%\tablespace\aisdata\tab_applob mkdir %ROOT%\tablespace\aisdata\tab_applob
if not exist %ROOT%\tablespace\aisdata\tab_arch mkdir %ROOT%\tablespace\aisdata\tab_arch