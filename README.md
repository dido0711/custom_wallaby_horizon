# README #

-How to add vault theme into your Horizon

1. add {root}/openstack_dashboard/themes/vault folder into your horizon theme root folder, openstack_dashbaord/themes
2. update your openstack_dashboard/local/local_settings.py's AVAILABLE_THEMES variable as below
AVAILABLE_THEMES = [
    ('vault', 'Vault Theme', 'themes/vault'),
]

-How to hide floating ip panel and association

1. add {root}/vault module into your horizon root.
2. add HORIZON_CONFIG["customization_module"] variable into your openstack_dashboard/local/local_settings.py as below
HORIZON_CONFIG["customization_module"] = "vault.overrides"


In this repo, new theme plugin or setting file is in as same path as Horizon project.
You only need to update local_settings.py file and also you can refer to local_settings.py.example's end lines