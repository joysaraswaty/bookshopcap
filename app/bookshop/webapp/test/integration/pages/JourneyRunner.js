sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"library/bookshop/test/integration/pages/booksList",
	"library/bookshop/test/integration/pages/booksObjectPage"
], function (JourneyRunner, booksList, booksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('library/bookshop') + '/test/flp.html#app-preview',
        pages: {
			onThebooksList: booksList,
			onThebooksObjectPage: booksObjectPage
        },
        async: true
    });

    return runner;
});

