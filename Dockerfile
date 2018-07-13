FROM odoo:11.0

USER root

COPY ./odoo.conf /etc/odoo/
RUN chown odoo /etc/odoo/odoo.conf

RUN mkdir -p /mnt/myaddons \
		&& chown -R odoo /mnt/myaddons \
		&& chmod -R 755 /mnt/myaddons
VOLUME ["/var/lib/odoo", "/mnt/extra-addons", "/mnt/myaddons"]

USER odoo
