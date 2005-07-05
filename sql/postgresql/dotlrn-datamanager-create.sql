--
-- Copyright (C) 2004 University XYZ
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
--   @author YYY ZZZ (YYY.ZZZ@xx.yy)
--   @creation-date 2004-10-10
--   @version $Id: dotlrn-datamanager-create.sql,v 0.1 2004/10/10

-- create the implementation
select acs_sc_impl__new (
                'dotlrn_applet',
                'dotlrn_datamanager',
                'dotlrn_datamanager'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'GetPrettyName',
               'dotlrn_datamanager::get_pretty_name',
               'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddApplet',
               'dotlrn_datamanager::add_applet',
               'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveApplet',
               'dotlrn_datamanager::remove_applet',
               'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddAppletToCommunity',
               'dotlrn_datamanager::add_applet_to_community',
               'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveAppletFromCommunity',
               'dotlrn_datamanager::remove_applet_from_community',
               'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddUser',
               'dotlrn_datamanager::add_user',
               'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveUser',
               'dotlrn_datamanager::remove_user',
               'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'AddUserToCommunity',
               'dotlrn_datamanager::add_user_to_community',
               'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_datamanager',
               'RemoveUserFromCommunity',
               'dotlrn_datamanager::remove_user_from_community',
               'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_datamanager',
        'AddPortlet',
        'dotlrn_datamanager::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_datamanager',
        'RemovePortlet',
        'dotlrn_datamanager::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_datamanager',
        'Clone',
        'dotlrn_datamanager::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_datamanager',
        'ChangeEventHandler',
        'dotlrn_datamanager::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
            'dotlrn_applet',
            'dotlrn_datamanager'
);
