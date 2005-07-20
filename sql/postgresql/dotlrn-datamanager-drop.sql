--
-- Copyright (C) 2004 University Carlos III de Madrid 
--
--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--
--
--   Procedures to support the dotlrn datamanager
--
--   @author Luis de la Fuente (lfuente@it.uc3m.es)
--   @creation-date 2005-07-07
--   @version $Id: dotlrn-datamanager-drop.sql,v 0.1 2004/10/10

select acs_sc_impl__delete(
           'dotlrn_applet',             -- impl_contract_name
           'dotlrn_datamanager'                -- impl_name
);


-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'GetPrettyName'
);

-- AddApplet
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddApplet'
);

-- RemoveApplet
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveApplet'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddAppletToCommunity'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveAppletFromCommunity'
);

-- AddUser
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddUser'
);

-- RemoveUser
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveUser'
);

-- AddUserToCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddUserToCommunity'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveUserFromCommunity'
);

-- AddPortlet
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_datamanager',
        'AddPortlet'
    );

-- RemovePortlet
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_datamanager',
        'RemovePortlet'
);

-- Clone
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_datamanager',
        'Clone'
);


-- Add the binding
select acs_sc_binding__delete (
            'dotlrn_applet',
            'dotlrn_datamanager'
);
