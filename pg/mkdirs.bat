set ROOT=%CD%
if not exist %ROOT%\data\tablespace mkdir %ROOT%\data\tablespace
if not exist %ROOT%\data\tablespace\aisdata mkdir %ROOT%\data\tablespace\aisdata
if not exist %ROOT%\data\tablespace\aisindex mkdir %ROOT%\data\tablespace\aisindex
if not exist %ROOT%\data\tablespace\aisdata\tab_large mkdir %ROOT%\data\tablespace\aisdata\tab_large
if not exist %ROOT%\data\tablespace\aisdata\tab_medium mkdir %ROOT%\data\tablespace\aisdata\tab_medium
if not exist %ROOT%\data\tablespace\aisdata\tab_small mkdir %ROOT%\data\tablespace\aisdata\tab_small
if not exist %ROOT%\data\tablespace\aisdata\tab_lob mkdir %ROOT%\data\tablespace\aisdata\tab_lob
if not exist %ROOT%\data\tablespace\aisdata\jn mkdir %ROOT%\data\tablespace\aisdata\jn
if not exist %ROOT%\data\tablespace\aisindex\indlr mkdir %ROOT%\data\tablespace\aisindex\indlr
if not exist %ROOT%\data\tablespace\aisindex\indexs mkdir %ROOT%\data\tablespace\aisindex\indexs
if not exist %ROOT%\data\tablespace\aisindex\indpuk mkdir %ROOT%\data\tablespace\aisindex\indpuk
if not exist %ROOT%\data\tablespace\aisdata\tab_applob mkdir %ROOT%\data\tablespace\aisdata\tab_applob
if not exist %ROOT%\data\tablespace\aisdata\tab_arch mkdir %ROOT%\data\tablespace\aisdata\tab_arch