/*!
 * Copyright (c) Metaways Infosystems GmbH, 2011
 * LGPLv3, http://opensource.org/licenses/LGPL-3.0
 */


Ext.ns('MShop.panel.order.product');

MShop.panel.order.product.ItemUi = Ext.extend(MShop.panel.AbstractItemUi, {

    maximized : true,
    layout : 'fit',
    modal : true,
    siteidProperty : 'order.base.product.siteid',


    initComponent : function() {

        this.title = MShop.I18n.dt('admin', 'Product item details');

        MShop.panel.AbstractItemUi.prototype.setSiteCheck(this);

        this.items = [{
            xtype : 'tabpanel',
            activeTab : 0,
            border : false,
            itemId : 'MShop.panel.order.product.ItemUi',
            plugins : ['ux.itemregistry'],
            items : [{
                xtype : 'panel',
                title : MShop.I18n.dt('admin', 'Product'),
                border : false,
                layout : 'hbox',
                layoutConfig : {
                    align : 'stretch'
                },
                itemId : 'MShop.panel.order.product.ItemUi.BasicPanel',
                plugins : ['ux.itemregistry'],
                defaults : {
                    bodyCssClass : this.readOnlyClass
                },
                items : [{
                    xtype : 'form',
                    title : MShop.I18n.dt('admin', 'Details'),
                    flex : 1,
                    ref : '../../mainForm',
                    autoScroll : true,
                    items : [{
                        xtype : 'fieldset',
                        style : 'padding-right: 25px;',
                        border : false,
                        labelAlign : 'left',
                        defaults : {
                            readOnly : this.fieldsReadOnly,
                            anchor : '100%'
                        },
                        items : [{
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'ID'),
                            name : 'order.base.product.id'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Product ID'),
                            name : 'order.base.product.productid'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Order product ID'),
                            name : 'order.base.product.orderproductid'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Type'),
                            name : 'order.base.product.type'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Code'),
                            name : 'order.base.product.prodcode'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Name'),
                            name : 'order.base.product.name'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Quantity'),
                            name : 'order.base.product.quantity'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Price'),
                            name : 'order.base.product.price'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Costs'),
                            name : 'order.base.product.costs'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Rebate'),
                            name : 'order.base.product.rebate'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Tax rate in %'),
                            name : 'order.base.product.taxrate'
                        }, {
                            xtype : 'ux.formattabledisplayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Status'),
                            name : 'order.base.product.status',
                            renderer : MShop.elements.deliverystatus.renderer
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Created'),
                            name : 'order.base.product.ctime'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Last modified'),
                            name : 'order.base.product.mtime'
                        }, {
                            xtype : 'displayfield',
                            fieldLabel : MShop.I18n.dt('admin', 'Editor'),
                            name : 'order.base.product.editor'
                        }]
                    }]
                }, {
                    xtype : 'MShop.panel.order.base.product.attribute.listuismall',
                    layout : 'fit',
                    flex : 1,
                    onOpenEditWindow : function() {}
                }]
            }]
        }];

        MShop.panel.order.product.ItemUi.superclass.initComponent.call(this);
    }
});

Ext.reg('MShop.panel.order.product.itemui', MShop.panel.order.product.ItemUi);
