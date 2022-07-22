set ROOT=%CD%
rmdir tablespace
if not exist %ROOT%\tablespace mkdir %ROOT%\tablespace
if not exist %ROOT%\tablespace\aisdata mkdir %ROOT%\tablespace\aisdata
if not exist %ROOT%\tablespace\aisindex mkdir %ROOT%\tablespace\aisindex
if not exist %ROOT%\tablespace\aistab_large mkdir %ROOT%\tablespace\aistab_large
if not exist %ROOT%\tablespace\aistab_medium mkdir %ROOT%\tablespace\aistab_medium
if not exist %ROOT%\tablespace\aistab_small mkdir %ROOT%\tablespace\aistab_small
if not exist %ROOT%\tablespace\aistab_lob mkdir %ROOT%\tablespace\aistab_lob
if not exist %ROOT%\tablespace\aisjn mkdir %ROOT%\tablespace\aisjn
if not exist %ROOT%\tablespace\aisindex\indlr mkdir %ROOT%\tablespace\aisindex\indlr
if not exist %ROOT%\tablespace\aisindex\indexs mkdir %ROOT%\tablespace\aisindex\indexs
if not exist %ROOT%\tablespace\aisindex\indpuk mkdir %ROOT%\tablespace\aisindex\indpuk
if not exist %ROOT%\tablespace\aistab_applob mkdir %ROOT%\tablespace\aistab_applob
if not exist %ROOT%\tablespace\aistab_arch mkdir %ROOT%\tablespace\aistab_arch