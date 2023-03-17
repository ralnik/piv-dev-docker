UPDATE piv.adm_parameter_values pvl SET VALUE = 'http://localhost:8080' WHERE pvl.par_pid = (SELECT pid FROM piv.adm_parameters p WHERE p.name ='mq-piv-sender-url');
UPDATE piv.adm_parameter_values pvl SET VALUE = '127.0.0.1' WHERE pvl.par_pid = (SELECT pid FROM piv.adm_parameters p WHERE p.name ='ais-supervisor-ip');
UPDATE piv.adm_parameter_values pvl SET VALUE = 'a.rashchevkin@bftcom.com' WHERE pvl.par_pid = (SELECT pid FROM piv.adm_parameters p WHERE p.name ='adm-supervisor-email');
