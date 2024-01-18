sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'acc/cio/testdraft/testdraft/test/integration/FirstJourney',
		'acc/cio/testdraft/testdraft/test/integration/pages/PayDetailList',
		'acc/cio/testdraft/testdraft/test/integration/pages/PayDetailObjectPage'
    ],
    function(JourneyRunner, opaJourney, PayDetailList, PayDetailObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('acc/cio/testdraft/testdraft') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePayDetailList: PayDetailList,
					onThePayDetailObjectPage: PayDetailObjectPage
                }
            },
            opaJourney.run
        );
    }
);