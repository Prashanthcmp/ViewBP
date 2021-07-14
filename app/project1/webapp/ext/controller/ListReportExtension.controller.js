sap.ui.define([
    'sap/m/library'
], function (library) {
    'use strict';

    var urlHelper = library.URLHelper;

    return sap.ui.controller("project1.ext.controller.ListReportExtension", {
        onInit: function (oEvent) {
            //alert('onInit');
        },

        _getVal: function(evt) {
			return evt.getSource().getText();
		},

        onLinkPress: function (evt){
            urlHelper.triggerEmail(this._getVal(evt), "Info Request", false, false, false, true);
        }
    });
});