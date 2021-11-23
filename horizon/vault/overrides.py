import horizon
project = horizon.get_dashboard('project')
floating_ips = project.get_panel('floating_ips')
project.unregister(floating_ips.__class__)

NO = lambda *x: False
from openstack_dashboard.dashboards.project.instances import tables
tables.AssociateIP.allowed = NO
tables.DisassociateIP.allowed = NO

from openstack_dashboard.usage import tables as usage_tables
usage_tables.CSVSummary.allowed = NO