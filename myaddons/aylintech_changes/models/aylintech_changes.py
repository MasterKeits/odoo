from odoo import models, fields, api, exceptions, _
import logging

_logger = logging.getLogger(__name__)


class ResPartnerLog(models.Model):
	_name = 'res.partner.log'
	_description = 'Contact Log'

	date_time = fields.Datetime('Date and Time')
	comment = fields.Html('Information')
	contact_id = fields.Many2one('res.partner', readonly=True)


class ResPartner(models.Model):
	_inherit = 'res.partner'

	contact_log = fields.One2many('res.partner.log', 'contact_id', string="Contact Log")
