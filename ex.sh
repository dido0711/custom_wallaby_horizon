#!/bin/sh
SITE_PACKAGES_ROOT=$(python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())")
mv /tmp/horizon/openstack_dashboard/themes/vault $SITE_PACKAGES_ROOT/openstack_dashboard/themes/vault
mv /tmp/horizon/vault $SITE_PACKAGES_ROOT/vault
