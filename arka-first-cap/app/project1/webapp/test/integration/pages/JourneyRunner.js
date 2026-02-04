sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/UsersList",
	"project1/test/integration/pages/UsersObjectPage"
], function (JourneyRunner, UsersList, UsersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheUsersList: UsersList,
			onTheUsersObjectPage: UsersObjectPage
        },
        async: true
    });

    return runner;
});

