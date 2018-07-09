FROM odoo:11.0

USER root

COPY ./odoo.conf /etc/odoo/
RUN chown odoo /etc/odoo/odoo.conf
#COPY v11-translations/ /usr/lib/python3.5/dist-packages/odoo/

RUN mkdir -p /mnt/myaddons \
        && chown -R odoo /mnt/myaddons
VOLUME ["/var/lib/odoo", "/mnt/extra-addons", "/mnt/myaddons"]

USER odoo
