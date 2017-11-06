
<!DOCTYPE html>
<html ng-app="ccc-app" class="" ng-class-for-lights>
<head ng-controller="HeaderSEOCtrl">
<title>CryptoCompare.com -  Live cryptocurrency prices, trades, volumes, forums, wallets, mining equipment and reviews.  | CryptoCompare.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content='We bring you all the latest streaming pricing data in the world of cryptocurrencies. Whether you are just interested in the Bitcoin price or you want to see the latest Ether volume, we have all the data available at your fingertips. Join the discussion on our active forum, get daily market updates and gain access to the best reviews in the cryptocurrency sector.' />
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:{profile:false},oracle:0,paths:{cloudflare:"https://ajax.cloudflare.com/cdn-cgi/nexp/dok3v=9eecb7db59/","cloudflare-static": "https://ajax.cloudflare.com/cdn-cgi/scripts/78d64697/"},atok:"603d804a60f79659dd3dcf72650678d3",petok:"c574a6f434ab66f7dee022c9043a5d5bb8998fbb-1509911052-1800",zone:"cryptocompare.com"}];!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="https://ajax.cloudflare.com/cdn-cgi/nexp/dok3v=c37cbdadf2/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="icon" href="/media/20562/favicon.png?v=2" type="image/png">
<link rel="apple-touch-icon" href="/media/20562/favicon.png?v=3">
<meta property="og:title" content='CryptoCompare.com -  Live cryptocurrency prices, trades, volumes, forums, wallets, mining equipment and reviews. ' />
<meta property="og:url" content='https://www.cryptocompare.com/' />
<meta property="og:type" content='website' />
<meta property="og:site_name" content='CryptoCompare' />
<meta property="og:description" content='We bring you all the latest streaming pricing data in the world of cryptocurrencies. Whether you are just interested in the Bitcoin price or you want to see the latest Ether volume, we have all the data available at your fingertips. Join the discussion on our active forum, get daily market updates and gain access to the best reviews in the cryptocurrency sector.' />
<meta property="og:image" content='https://www.cryptocompare.com/media/20625/logo1200x627.png' />
<link href="https://plus.google.com/115435853043353159139" rel="publisher" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Open+Sans+Condensed:700" rel="stylesheet" />
<link href="/DependencyHandler.axd?s=L2Nzcy9hbmd1bGFyLW1hdGVyaWFsLjEuMS4wLm1pbi5jc3M7L2Nzcy9ib290c3RyYXAtbWluLmNzczsvY3NzL1JURS5jc3M7L2Nzcy9jY2Nub25sZXNzLmNzczsvY3NzL2ZvbnQtYXdlc29tZS5jc3M7L2Nzcy9zd2lwZXIuY3NzOy9jc3Mvc3R5bGVzLmNzczsvY3NzL2hvbWVwYWdlLmNzczsvY3NzL2ZvcnVtLmNzczsvY3NzL2RhcmsuY3NzOw&amp;t=Css&amp;cdv=745" type="text/css" rel="stylesheet" />
<style>[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak,ng-hide:not(.ng-hide-animate) {display: none !important;}</style>
<!--[if lte IE 8]><style>#ieError{display:block;}</style><![endif]-->
<script src="/DependencyHandler.axd?s=L3NjcmlwdHMvVmVuZG9yL2pxdWVyeS0xLjExLjMubWluLmpzOy9zY3JpcHRzL1ZlbmRvci9hbmd1bGFyLjEuNS41Lm1pbi5qczsvc2NyaXB0cy9WZW5kb3IvZXh0cmEtYW5ndWxhci1tb2R1bGVzLmpzOy9zY3JpcHRzL2luaXRhbmd1bGFyYXBwLmpzOy9zY3JpcHRzL1ZlbmRvci9zb2NrZXQuaW8tMi4wLjMuanM7L3NjcmlwdHMvVmVuZG9yL2hvdmVyLWRyb3Bkb3duLmpzOy9zY3JpcHRzL3N0cmVhbWluZy11dGlsaXRpZXMuanM7L3NjcmlwdHMvc2VydmljZXMvZ2xvYmFsLmpzOy9zY3JpcHRzL2NvbnRyb2xsZXJzL2dsb2JhbC5qczsvc2NyaXB0cy9kaXJlY3RpdmVzL2dsb2JhbC5qczsvc2NyaXB0cy9nbG9iYWwuanM7L3NjcmlwdHMvc2VydmljZXMvc3RyZWFtaW5nLmpzOy9zY3JpcHRzL2NvbnRyb2xsZXJzL3N0cmVhbWluZy5qczsvc2NyaXB0cy9kaXJlY3RpdmVzL3N0cmVhbWluZy5qczsvc2NyaXB0cy9WZW5kb3IvQW1DaGFydHMvYW1jaGFydHMuanM7L3NjcmlwdHMvVmVuZG9yL0FtQ2hhcnRzL3NlcmlhbC5qczsvc2NyaXB0cy9WZW5kb3Ivc3dpcGVyLmpzOy9zY3JpcHRzL21haW4uanM7L3NjcmlwdHMvY2NjQW1DaGFydHNBbmd1bGFyLmpzOy9zY3JpcHRzL3NlcnZpY2VzL2ZvcnVtLmpzOy9zY3JpcHRzL2NvbnRyb2xsZXJzL2ZvcnVtLmpzOy9zY3JpcHRzL2RpcmVjdGl2ZXMvZm9ydW0uanM7L3NjcmlwdHMvc2VydmljZXMvcmV2aWV3cy5qczsvc2NyaXB0cy9jb250cm9sbGVycy9yZXZpZXdzLmpzOy9zY3JpcHRzL2RpcmVjdGl2ZXMvcmV2aWV3cy5qczs&amp;t=Javascript&amp;cdv=745" type="text/javascript"></script>
<script>
		angular.module('ccc-app').run(function(userManager,notificationsManager){
				userManager.setLoggedIn(false);
				userManager.setAvatarUrl('/media/19582/icon-user-default.png');
				userManager.setUsername('Anonymous');
				userManager.setEmailAddress('Anonymous');
				userManager.setFollowing(false);
		});
	</script>
<script>
		angular.module('ccc-app').run(function(pageInfo,forumPreLoadedData,reviewData){
			pageInfo.setH1Text("CryptoCompare Hompage");
			pageInfo.setPageId(1083);
			pageInfo.setBaseUrl("/");
			pageInfo.setDocumentType("Webpagehome");
			
			forumPreLoadedData.setInitData({"Response":"Success","Message":"A mind needs books as a sword needs a whetstone, if it is to keep its edge. Apparently you just needed a list of posts.","Type":100,"PostArray":[{"Id":245787,"ThreadId":236358,"Parent":{"Name":"UTK","LogoUrl":"/media/9350717/utrust.png","Url":"/coins/utk/"},"Cryptopian":{"Id":17423,"Name":"Kanopt","Avatar":"https://images.cryptocompare.com/17423/d9aa0e8f-c15a-435b-b257-0e0674a3a600.png"},"Body":"UTRUST ICO is now live! https://utrust.io/","Timestamp":1509697164750.0,"Sticky":true,"Edited":false,"Actions":{"Agree":{"Total":10,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":1,"Involved":false,"NextLoad":0}},"Notification":false},{"Id":247024,"ThreadId":1182,"Parent":{"Name":"BTC","LogoUrl":"/media/19633/btc.png","Url":"/coins/btc/"},"Cryptopian":{"Id":50250,"Name":"dallycurtis","Avatar":"https://images.cryptocompare.com/50250/395e3b4c-7f9d-4680-80ef-9e47fd15a2fc.png"},"Body":"fawkin fridays lol<br/><br/>Ill be honest man...I aint touchin shit...I aint buying...i aint selling...i&#39;m just gonna sit here and watch...win lose or draw....<br/><br/>I&#39;m doin nothin....","Timestamp":1509759167803.0,"Sticky":false,"Edited":false,"Actions":{"Agree":{"Total":23,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":14,"Involved":false,"NextLoad":8}},"Notification":false},{"Id":246783,"ThreadId":4614,"Parent":{"Name":"XLM","LogoUrl":"/media/20696/str.png","Url":"/coins/xlm/"},"Cryptopian":{"Id":297525,"Name":"astrocoin","Avatar":"https://images.cryptocompare.com/297525/7e2c5b61-308f-419f-adc3-d0edf46591f9.jpg"},"Body":"One thing I&#39;ve learned this year that is far more important then any other lesson. &quot;Patience is king&quot; I started this year off in January with $8000, and invested in both bitcoin and ether. Roughly 75% in ether and 25% in BTC. I left it there and didn&#39;t touch it what so ever. A couple months later I had accrued $35000, that number then grew to $60,000. I decided to sell off some btc and get into ripple. Ended up making a couple more thousand. I then invested $3500 into lumens. By July (2017) I had $110,000. Thinking that the number would simply grow and grow I left it there. It quickly crashed down to 70k, I got nervous and sold off the majority of my holdings thinking it would dip lower. As soon as I sold it, It started to rise a couple days later. Thinking it would come back down I remained still. After realizing it wasnt going back down, I bought back in at a higher price then what I paid for. The story gets more and more complicated to the point where I took out some loans to invest more, but to sum it up. I went hail marry a couple more times on &quot;opportunities&quot; that I thought would pay off in regards to day trading. They all fucked me over. My portfolio was no longer diversified and I went full steam into lumens after the announcement regarding IBM, sold it all and rushed to buy 1.75 million lumens at .00000667 btc (what I thought was a good price) Im down 15k from that investment. Bottom line, patience is king and day trading is a bitch. I pretty much lost the majority of my gains from this year in a single week. HOWEVER, I believe lumen will come to rise within the next couple months. Until then I remain positive.","Timestamp":1509743959263.0,"Sticky":false,"Edited":true,"Actions":{"Agree":{"Total":19,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":17,"Involved":false,"NextLoad":11}},"Notification":false},{"Id":246854,"ThreadId":7605,"Parent":{"Name":"ETH","LogoUrl":"/media/20646/eth_logo.png","Url":"/coins/eth/"},"Cryptopian":{"Id":298674,"Name":"Big_Dick_is_back","Avatar":"https://images.cryptocompare.com/298674/1f1b54b3-45ce-4b4e-bc99-08a46d913cd2.png"},"Body":"First time crypto investor: &quot;Hello I&#39;m new to crypto, I would like to buy 1 Bitcoin please!&quot;<br/><br/>Bitcoin salesman: &quot;Excellent choice Sir! With a limited supply of only 21 million, Bitcoin is a scarce resource guaranteed to moon! Which kind of Bitcoin would you like to purchase?&quot;<br/><br/>First time crypto investor: &quot;Uhm... There&#39;s more than 1 kind of Bitcoin?&quot;<br/><br/>Bitcoin salesman: &quot;There&#39;s 16&quot;<br/><br/>First time crypto investor: &quot;16?!&quot;<br/><br/>Bitcoin salesman: &quot;Yes Sir, Bitcoin Gold, Bitcoin Silver, Bitcoin Cash, Bitcoin Unlimited, Bitcoin 2x, Bitcoin Cash 2x, Bitcoin Gold Cash, Bitcoin Cash 4 Gold, Bitcoin Classic...&quot;<br/><br/>First time crypto investor: &quot;Bitcoin Classic sounds good!&quot;<br/><br/>Bitcoin salesman: &quot;Oh, so you support forks?&quot;<br/><br/>First time crypto investor: &quot;Uhm... How is cutlery related to Bitcoin?&quot;<br/><br/>Bitcoin salesman: &quot;sigh... A fork is when the blockchain splits into 2, resulting in 2 different coins&quot;<br/><br/>First time crypto investor: &quot;Okay so... I would like to buy the original Bitcoin please&quot;<br/><br/>Bitcoin salesman: &quot;I wouldn&#39;t recommend that Sir.&quot;<br/><br/>First time crypto investor: &quot;Why not?&quot;<br/><br/>Bitcoin salesman: &quot;The miners no longer support that chain&quot;<br/><br/>First time crypto investor; &quot;Miners? I just want to buy 1 Bitcoin! The one with 21 million that&#39;s going to the moon!&quot;<br/><br/>Bitcoin salesman: &quot;They all have 21 million, Sir, and they all could go to the moon&quot;<br/><br/>First time crypto investor: &quot;Okay so... Which one should I choose?!&quot;<br/><br/>Bitcoin salesman: &quot;Do you support Segwit2x?&quot;<br/><br/>First time crypto investor: &quot;Segwit..?&quot;<br/><br/>Bitcoin salesman: &quot;Do you believe in Satoshi&#39;s original vision?&quot;<br/><br/>First time crypto investor: &quot;Uhm... Maybe I should get that other one, Ethereum?&quot;<br/><br/>Bitcoin salesman: &quot;I wouldn&#39;t recommend that, it&#39;s a scam&quot;<br/><br/>First time crypto investor: &quot;Why is it a scam?&quot;<br/><br/>Bitcoin salesman: &quot;There&#39;s an unlimited amount of coins and they forked&quot;<br/><br/>First time crypto investor: &quot;?!?!?!?!?&quot;","Timestamp":1509747770077.0,"Sticky":false,"Edited":false,"Actions":{"Agree":{"Total":29,"Involved":false},"Disagree":{"Total":1,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":7,"Involved":false,"NextLoad":1}},"Notification":false},{"Id":246818,"ThreadId":1182,"Parent":{"Name":"BTC","LogoUrl":"/media/19633/btc.png","Url":"/coins/btc/"},"Cryptopian":{"Id":229529,"Name":"betavision","Avatar":"https://images.cryptocompare.com/229529/4a880cf4-3aaa-4f38-bb2c-05dc93fcb2b6.png"},"Body":"Just for the record... be aware of lookalike SCAM... No free BTC!!<br/>https://image.ibb.co/dhmuoG/scam.jpg","Timestamp":1509745431377.0,"Sticky":false,"Edited":false,"Actions":{"Agree":{"Total":15,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":12,"Involved":false,"NextLoad":6}},"Notification":false}]});
			reviewData.setInitData({"Response":"Success","Message":"A mind needs books as a sword needs a whetstone, if it is to keep its edge. Apparently you just needed a list of reviews.","Type":100,"ReviewArray":[{"Id":11996,"Parent":{"Name":"ANXPRO Elite USD Card","LogoUrl":"/media/9350778/anx-elite.png","Url":"/wallets/anxpro-elite-usd-card/#reviews"},"Cryptopian":{"Id":285471,"Name":"hamykute90","Avatar":"https://images.cryptocompare.com/285471/160e64e2-3516-48bf-847b-b064447a2761.png"},"Body":"2000","Timestamp":1509884379563.0,"Rating":3,"Actions":{"Agree":{"Total":0,"Involved":false},"Disagree":{"Total":1,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":0,"Involved":false,"NextLoad":0}},"Notification":false},{"Id":11995,"Parent":{"Name":"NXT Client","LogoUrl":"/media/20627/nxt.png","Url":"/wallets/nxt-client/#reviews"},"Cryptopian":{"Id":367037,"Name":"amarodomingo328","Avatar":"https://images.cryptocompare.com/367037/fe5b5fad-3e05-463d-af10-ad847a000df7.jpg"},"Body":"Excellent wallet a one stop apps for my cryptos wallet","Timestamp":1509876922553.0,"Rating":5,"Actions":{"Agree":{"Total":0,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":0,"Involved":false,"NextLoad":0}},"Notification":false},{"Id":11991,"Parent":{"Name":"CoinVault","LogoUrl":"/media/351159/coinvault.png","Url":"/wallets/coinvault/#reviews"},"Cryptopian":{"Id":366950,"Name":"maxjensch","Avatar":"https://images.cryptocompare.com/366950/b9b3fdc3-d0cc-4a44-9094-d423c081d201.jpg"},"Body":"I tried coinvault, mainly to store many different coins. But I don&#39;t recommend it. The website is *still* in beta, functionality is very limited.<br/>But worst of all, sending coins to another wallet works choppy at best. I&#39;ve spent almost a month getting my Stratis out. <br/>There is no support (even though they claim, and I quote, &#39;we&#39;ll try to answer immediatly.&#39;). Utter bullcrap.<br/><br/>Use something that is more widely recognised.<br/><br/>If you do have trouble getting your coins out, two tips:<br/>1. when sending, you have to subtract the fee yourself. If you have 20 Stratis, and you want to send it all, subtract the 0.01 fee yourself, otherwise it will try and send everything, but fail somewhere. <br/>2. if you did have transactions that sent only a fraction of the total (because you didn&#39;t subtract the fee), wait a while. For me a couple of days was enough, to finally get my money back.","Timestamp":1509868666053.0,"Rating":1,"Actions":{"Agree":{"Total":1,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":0,"Involved":false,"NextLoad":0}},"Notification":false},{"Id":11985,"Parent":{"Name":"BitMain","LogoUrl":"/media/19482/bitmain.png","Url":"/mining/bitmain/#reviews"},"Cryptopian":{"Id":366261,"Name":"akkedis123","Avatar":"https://images.cryptocompare.com/366261/225f71df-df1c-40dc-83b1-82a25b3bf010.jpg"},"Body":"It is time this company gets a proper competitor...There was a case where they mined the dash coin with the same machines they sold to the people. They mine it, make the difficulty rise up, and then sell the spoils to the people.","Timestamp":1509863624473.0,"Rating":1,"Actions":{"Agree":{"Total":0,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":0,"Involved":false,"NextLoad":0}},"Notification":false},{"Id":11984,"Parent":{"Name":"L3+ Antminer","LogoUrl":"/media/1382997/antminer-l3plus.png","Url":"/mining/bitmain/antminer-l3plus/#reviews"},"Cryptopian":{"Id":163489,"Name":"Frencky","Avatar":"https://images.cryptocompare.com/163489/ccb839f4-f46d-413d-98ac-1bdc76f3af7c.jpg"},"Body":"see antminer D3 now !<br/>if Rip Roi, company will not be a responsibility, can not cancel and no refund !<br/>If the profit is high, then the company will releasing batch up to lower of profit !!!<br/>L3+ or S9 will releasing new batch again and again and again until payback never !!!<br/>Pre-Order now while stock lasts!","Timestamp":1509862653100.0,"Rating":1,"Actions":{"Agree":{"Total":1,"Involved":false},"Disagree":{"Total":0,"Involved":false},"Report":{"Total":0,"Involved":false},"Comment":{"Total":0,"Involved":false,"NextLoad":0}},"Notification":false}]});
		});
	</script>
</head>
<body class="Webpagehome " ng-class-for-lights>

<noscript>
			<iframe src="//www.googletagmanager.com/ns.html?id=GTM-NPCM6K"
				height="0" width="0" style="display:none;visibility:hidden"></iframe>
			<div class="container-js-not-enabled">
				<div class="js-not-enabled-error">
					<div class="browser-js-not-enabled">
						<p><b>CryptoCompare</b> needs javascript enabled in order to work.</p>
					</div>
					<p>Follow these instructions to activate and enable JavaScript in <b>Chrome</b>.</p>
					<p>PC</p>
					<ol>
						<li>To the right of the address bar, click the icon with <strong>3 stacked horizontal lines</strong>.</li>
						<li>From the drop-down menu, select <strong>Settings</strong>.</li>
						<li>At the bottom of the page, click the <strong>Show advanced settings…</strong> link.</li>
						<li>Under the <strong>Privacy</strong> section, click the <strong>Content settings…</strong> button.</li>
						<li>Under the <strong>JavaScript</strong> heading, select the <strong>Allow all sites to run JavaScript</strong> radio button.</li>
						<li>Finally, <strong>refresh</strong> your browser.</li>
					</ol>
					<p>MAC</p>
					<ol>
						<li>Select <strong>Chrome</strong> from the Apple/System bar at the top of the screen.</li>
						<li>Select <strong>Preferences...</strong> from the drop-down menu.</li>
						<li>In the left-hand column, select <strong>Settings</strong> from the list.</li>
						<li>At the bottom of the page, click the <strong>Show advanced settings…</strong> link.</li>
						<li>Under the <strong>Privacy</strong> section, click the <strong>Content settings…</strong> button.</li>
						<li>Under the <strong>JavaScript</strong> heading, select the <strong>Allow all sites to run JavaScript</strong> radio button.</li>
						<li>Finally, <strong>refresh</strong> your browser.</li>
					</ol>
				</div>
			</div>
		</noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-NPCM6K');</script>

<div class="normal-browser" ng-cloak>
<script type="text/ng-template" id="general/auto-suggest-result.html">
	<div class="typeahead-group-header" ng-if="match.model.firstInGroup">{{match.model.group}}</div>
	<a class="typeahead-result-option" href="{{match.model.fullPath}}">
		<span ng-bind-html="match.label | uibTypeaheadHighlight:query"></span>
	</a>
</script>
<script type="text/ng-template" id="general/notification-user-action.html">
<li>
	<a href="#" class="media">
		<span class="label pull-right" ng-class="{'label-success':notification.Type=='Comment'||notification.Type=='Agree'||notification.Type=='Favorit','label-warning':notification.Type=='Disagree','label-danger':notification.Type=='Report'}"ng-show='notification.isNew'>New</span>
		<div class="media-left">
			<img ng-src="{{notification.From.AvatarUrl}}" class="img-user" />
		</div>
		<div class="media-body">
			<div class="text-nowrap"><b>{{notification.From.Username}}</b> {{getActionText()}} <b>{{notification.To.Description}}</b></div>
			<small class="text-muted">{{DateParsing.formatFromNow(notification.Time*1000)}}</small>
		</div>
	</a>
</li>					
</script>
<script type="text/ng-template" id="general/popover-rating.html">
	<div class="wrapper-star">
		<span class="stars-label">5 star </span>
		<span class="stars-progress-bar">
			<uib-progressbar value="item.Rating['Five']" max="item.Rating['TotalUsers']||1" animate="false"></uib-progressbar>
		</span>
		<span class="total-users">
			{{item.Rating['Five']}}
		</span>
	</div>
	<div class="wrapper-star">
		<span class="stars-label">4 star </span>
		<span class="stars-progress-bar">
			<uib-progressbar value="item.Rating['Four']" max="item.Rating['TotalUsers']||1" animate="false"></uib-progressbar>
		</span>
		<span class="total-users">
			{{item.Rating['Four']}}
		</span>
	</div>
	<div class="wrapper-star">
		<span class="stars-label">3 star </span>
		<span class="stars-progress-bar">
			<uib-progressbar value="item.Rating['Three']" max="item.Rating['TotalUsers']||1" animate="false"></uib-progressbar>
		</span>
		<span class="total-users">
			{{item.Rating['Three']}}
		</span>
	</div>
	<div class="wrapper-star">
		<span class="stars-label">2 star </span>
		<span class="stars-progress-bar">
			<uib-progressbar value="item.Rating['Two']" max="item.Rating['TotalUsers']||1" animate="false"></uib-progressbar>
		</span>
		<span class="total-users">
			{{item.Rating['Two']}}
		</span>
	</div>
	<div class="wrapper-star">
		<span class="stars-label">1 star </span>
		<span class="stars-progress-bar">
			<uib-progressbar value="item.Rating['One']" max="item.Rating['TotalUsers']||1" animate="false"></uib-progressbar>
		</span>
		<span class="total-users">
			{{item.Rating['One']}}
		</span>
	</div>
</script>
<script>
	angular.module('ccc-app').run(function(notificationsManager){
		notificationsManager.setNotifications([]);
	});
</script>
<div class="navbar navbar-inverse navbar-fixed-top visible-xs-block">
<div class="wrapper-mobile">
<ul class="nav navbar-nav pull-left nav-menu-mobile" ng-controller="DropdownMenuUserSectionCtrl" ng-class="{'not-loggedin':!userManager.isLoggedIn()}">
<li class="dropdown" uib-dropdown>
<a class="dropdown-toggle" uib-dropdown-toggle><span class="fa fa-bars"></span> <span class="caret"></span></a>
<ul class="uib-dropdown-menu" role="menu">
<li class="dropdown">
<a href="/" class="link-home"><div class="icon-mobile"><span class="fa fa-home fa-2x"></span></div>Home</a>
</li>
<li class="dropdown">
<a href="/coins/"><div class="icon-mobile"><span class="fa fa-bitcoin fa-2x"></span></div>Coins</a>
</li>
<li class="dropdown">
<a href="/ico/"><div class="icon-mobile"><span class="fa fa-money fa-2x"></span></div>ICOs</a>
</li>
<li class="dropdown">
<a href="/exchanges/"><div class="icon-mobile"><span class="fa fa-institution fa-2x"></span></div>Exchanges</a>
</li>
<li class="dropdown">
<a href="/mining/"><div class="icon-mobile"><span class="fa fa-gears fa-2x"></span></div>Mining</a>
</li>
<li class="dropdown">
<a href="/wallets/"><div class="icon-mobile"><span class="fa fa-book fa-2x"></span></div>Wallets</a>
</li>
<li class="dropdown">
<a href="/spend/"><div class="icon-mobile"><span class="fa fa-credit-card fa-2x"></span></div>Spend</a>
</li>
<li class="dropdown">
<a href="/forum/"><div class="icon-mobile"><span class="fa fa-comments fa-2x"></span></div>Forum</a>
</li>
<li class="dropdown">
<a href="/portfolio/"><div class="icon-mobile"><span class="fa fa-bar-chart fa-2x"></span></div>Portfolio</a>
</li>
<li class="dropdown">
<a href="" ng-click="switchLights()"><div class="icon-mobile"><span class="fa fa-lightbulb-o fa-2x"></span></div>Turn {{LightsStatus}}</a>
</li>
<li class="dropdown" ng-show="!userManager.isLoggedIn()">
<a href="" ng-click="showLogin()">
<div class="mobile-avatar"><i class="fa fa-key"></i></div>
Login / Register
</a>
</li>
<li class="dropdown ng-hide" uib-dropdown ng-show="userManager.isLoggedIn()">
<a href="/cryptopian/" class="uib-dropdown-toggle nav-profile">
<div class="mobile-avatar"><img ng-src="{{userManager.getAvatarUrl()}}" class="navbar-profile-avatar" alt="" /></div>
<span class="navbar-profile-label" ng-bind="userManager.getUsername()"></span>
</a>
</li>
</ul>
</li>
</ul>
<div class="container-search">
<form id="search-mobile" class="search-mobile" ng-controller="AutosuggestCtrl">
<input class="form-control" type="text" ng-model="asyncDataResult" typeahead-template-url="general/auto-suggest-result.html" placeholder="Type to search..." typeahead-wait-ms=200 uib-typeahead="result as result.nodeName for result in getAutosuggest($viewValue)" typeahead-loading="loadingData" typeahead-on-select='onSelect($item, $model, $label)'>
</form>
</div>
</div>
</div>
<div class="navbar navbar-main navbar-fixed-top visible-md-block visible-lg-block visible-sm-block" role="navigation">
<div class="container">
<div class="marker-ribbon ribbon-content">
<div class="navbar-header">
<a class="navbar-brand" href="/"></a>
</div>
<div class="navbar-top collapse navbar-collapse">
<ul class="nav navbar-nav navbar-megamenu" ng-controller="DropdownCtrl">
<li class="dropdown hidden-sm" uib-dropdown on-toggle="toggled(open)">
<a href="/coins/" class="uib-dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" ng-mouseover="menuCoins=true" ng-mouseleave="menuCoins=false">Coins</a>
<ul class="uib-dropdown-menu megamenu row" ng-class="{'megamenu-visible': menuCoins==true}" ng-mouseover="menuCoins=true" ng-mouseleave="menuCoins=false">
<li>
<div class="col-xs-4">
<div class="menu-column coins-featured">
<h4>Popular Coins</h4>
<ul>
<li class="item-special">
<a href="/coins/utk/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/9350717/utrust.png?anchor=center&mode=crop&width=32&height=32" title="UTK" style="display:none;visibility:hidden;"><noscript><img src="/media/9350717/utrust.png?anchor=center&mode=crop&width=32&height=32" title="UTK"></noscript>
</div>
<div class="coins-name">
Utrust
</div>
<span class="special-menu-text">Sponsored</span>
</a>
</li>
<li class="item-special">
<a href="/coins/elm/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/12318308/elm.png?anchor=center&mode=crop&width=32&height=32" title="ELM" style="display:none;visibility:hidden;"><noscript><img src="/media/12318308/elm.png?anchor=center&mode=crop&width=32&height=32" title="ELM"></noscript>
</div>
<div class="coins-name">
Elements
</div>
<span class="special-menu-text">Sponsored</span>
</a>
</li>
<li class="">
<a href="/coins/btc/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/19633/btc.png?anchor=center&mode=crop&width=32&height=32" title="BTC" style="display:none;visibility:hidden;"><noscript><img src="/media/19633/btc.png?anchor=center&mode=crop&width=32&height=32" title="BTC"></noscript>
</div>
<div class="coins-name">
Bitcoin
</div>
</a>
</li>
<li class="">
<a href="/coins/eth/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/20646/eth_logo.png?anchor=center&mode=crop&width=32&height=32" title="ETH" style="display:none;visibility:hidden;"><noscript><img src="/media/20646/eth_logo.png?anchor=center&mode=crop&width=32&height=32" title="ETH"></noscript>
</div>
<div class="coins-name">
Ethereum
</div>
</a>
</li>
<li class="">
<a href="/coins/ltc/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/19782/litecoin-logo.png?anchor=center&mode=crop&width=32&height=32" title="LTC" style="display:none;visibility:hidden;"><noscript><img src="/media/19782/litecoin-logo.png?anchor=center&mode=crop&width=32&height=32" title="LTC"></noscript>
</div>
<div class="coins-name">
Litecoin
</div>
</a>
</li>
<li class="">
<a href="/coins/dash/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/20626/imageedit_27_4355944719.png?anchor=center&mode=crop&width=32&height=32" title="DASH" style="display:none;visibility:hidden;"><noscript><img src="/media/20626/imageedit_27_4355944719.png?anchor=center&mode=crop&width=32&height=32" title="DASH"></noscript>
</div>
<div class="coins-name">
DigitalCash
</div>
</a>
</li>
<li class="">
<a href="/coins/xmr/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/19969/xmr.png?anchor=center&mode=crop&width=32&height=32" title="XMR" style="display:none;visibility:hidden;"><noscript><img src="/media/19969/xmr.png?anchor=center&mode=crop&width=32&height=32" title="XMR"></noscript>
</div>
<div class="coins-name">
Monero
</div>
</a>
</li>
<li class="">
<a href="/coins/nxt/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/20627/nxt.png?anchor=center&mode=crop&width=32&height=32" title="NXT" style="display:none;visibility:hidden;"><noscript><img src="/media/20627/nxt.png?anchor=center&mode=crop&width=32&height=32" title="NXT"></noscript>
</div>
<div class="coins-name">
Nxt
</div>
</a>
</li>
<li class="">
<a href="/coins/zec/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/351360/zec.png?anchor=center&mode=crop&width=32&height=32" title="ZEC" style="display:none;visibility:hidden;"><noscript><img src="/media/351360/zec.png?anchor=center&mode=crop&width=32&height=32" title="ZEC"></noscript>
</div>
<div class="coins-name">
ZCash
</div>
</a>
</li>
<li class="">
<a href="/coins/dgb/overview">
<div class="thumb-coin">
<img data-cfsrc="/media/12318264/7638-nty_400x400.jpg?anchor=center&mode=crop&width=32&height=32" title="DGB" style="display:none;visibility:hidden;"><noscript><img src="/media/12318264/7638-nty_400x400.jpg?anchor=center&mode=crop&width=32&height=32" title="DGB"></noscript>
</div>
<div class="coins-name">
DigiByte
</div>
</a>
</li>
</ul>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Toplists</h4>
<div>
<ul>
<li><a href="/coins/#/btc">BTC Toplist</a></li>
<li><a href="/coins/#/usd">USD Toplist</a></li>
<li><a href="/coins/#/cny">CNY Toplist</a></li>
<li><a href="/coins/#/eur">EUR Toplist</a></li>
<li><a href="/coins/#/gbp">GBP Toplist</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>ICO Toplist</h4>
<div>
<ul>
<li><a href="/ico/#/upcoming">Upcoming</a></li>
<li><a href="/ico/#/ongoing">Ongoing</a></li>
<li><a href="/ico/#/completed">Completed</a></li
											</ul>
</div>
</div>
</div>
<div class="col-xs-4">
<div class="menu-column border-no guide-featured">
<a href="/coins/guides/"><h4>Guides</h4></a>
<div>
<ul>
<li class="item-special"><a href="/coins/guides/what-is-monaize/">What is Monaize?</a></li>
<li class="item-special"><a href="/coins/guides/cointed-a-bridge-between-the-cryptocurrency-and-the-real-world/">Cointed: a Bridge Between the Cryptocurrency and the Real World</a></li>
<li class="item-special"><a href="/coins/guides/caviar-crypto-and-real-estate-in-one-token/">Caviar: Crypto And Real Estate In One Token</a></li>
<li class=""><a href="/coins/guides/what-is-bitcoin/">What is Bitcoin?</a></li>
<li class="view-more-menu-link"><a href="/coins/guides/">View all coin guides ...</a></li>
</ul>
</div>
</div>
</div>
</li>
</ul>
</li>
<li class="dropdown hidden-sm" uib-dropdown on-toggle="toggled(open)">
<a href="/exchanges/" class="uib-dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" data-toggle="dropdown" data-hover="dropdown" data-delay="200" ng-mouseover="menuExchanges=true" ng-mouseleave="menuExchanges=false">Exchanges</a>
<ul class="uib-dropdown-menu megamenu row" ng-class="{'megamenu-visible': menuExchanges==true}" ng-mouseover="menuExchanges=true" ng-mouseleave="menuExchanges=false">
<li>
<div class="col-xs-2">
<div class="menu-column exchanges-featured border-no">
<ul>
<li class="">
<a href="/exchanges/bitstamp/overview">
<div class="thumb-exchange">
<img data-cfsrc="/media/9350794/bitstamp1.png?anchor=center&mode=crop&width=55&height=55" title="Bitstamp" style="display:none;visibility:hidden;"><noscript><img src="/media/9350794/bitstamp1.png?anchor=center&mode=crop&width=55&height=55" title="Bitstamp"></noscript>
</div>
</a>
</li>
<li class="">
<a href="/exchanges/bittrex/overview">
<div class="thumb-exchange">
<img data-cfsrc="/media/19557/bittrex.png?anchor=center&mode=crop&width=55&height=55" title="Bittrex" style="display:none;visibility:hidden;"><noscript><img src="/media/19557/bittrex.png?anchor=center&mode=crop&width=55&height=55" title="Bittrex"></noscript>
</div>
</a>
</li>
<li class="">
<a href="/exchanges/poloniex/overview">
<div class="thumb-exchange">
<img data-cfsrc="/media/19577/poloniex.png?anchor=center&mode=crop&width=55&height=55" title="Poloniex" style="display:none;visibility:hidden;"><noscript><img src="/media/19577/poloniex.png?anchor=center&mode=crop&width=55&height=55" title="Poloniex"></noscript>
 </div>
</a>
</li>
<li class="">
<a href="/exchanges/bitfinex/overview">
<div class="thumb-exchange">
<img data-cfsrc="/media/1383638/bitfinex.png?anchor=center&mode=crop&width=55&height=55" title="Bitfinex" style="display:none;visibility:hidden;"><noscript><img src="/media/1383638/bitfinex.png?anchor=center&mode=crop&width=55&height=55" title="Bitfinex"></noscript>
</div>
</a>
</li>
<li class="">
<a href="/exchanges/coinbase/overview">
<div class="thumb-exchange">
<img data-cfsrc="/media/19566/coinbase.png?anchor=center&mode=crop&width=55&height=55" title="Coinbase" style="display:none;visibility:hidden;"><noscript><img src="/media/19566/coinbase.png?anchor=center&mode=crop&width=55&height=55" title="Coinbase"></noscript>
</div>
</a>
</li>
<li class="">
<a href="/exchanges/gemini/overview">
<div class="thumb-exchange">
<img data-cfsrc="/media/20736/gemini.png?anchor=center&mode=crop&width=55&height=55" title="Gemini" style="display:none;visibility:hidden;"><noscript><img src="/media/20736/gemini.png?anchor=center&mode=crop&width=55&height=55" title="Gemini"></noscript>
</div>
</a>
</li>
</ul>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Analysis</h4>
<div>
<ul>
<li><a href="/exchanges/#/overview">Overview</a></li>
<li><a href="/exchanges/#/crypto">Crypto Exchanges</a></li>
<li><a href="/exchanges/#/btc-and-ltc">BTC and LTC</a></li>
<li><a href="/exchanges/#/btc">BTC Only</a></li>
<li><a href="/exchanges/#/popular">Popular</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column">
<h4>By Rating</h4>
<div>
<ul>
<li><a href="/exchanges/bitsquare/reviews"><span class="menu-stars">4.5 <i class="fa fa-star"></i></span> BitSquare</a></li>
<li><a href="/exchanges/binance/reviews"><span class="menu-stars">4.3 <i class="fa fa-star"></i></span> Binance</a></li>
<li><a href="/exchanges/cryptopia/reviews"><span class="menu-stars">3.7 <i class="fa fa-star"></i></span> Cryptopia</a></li>
<li><a href="/exchanges/gatecoin/reviews"><span class="menu-stars">3.6 <i class="fa fa-star"></i></span> Gatecoin</a></li>
<li><a href="/exchanges/quadrigacx/reviews"><span class="menu-stars">3.6 <i class="fa fa-star"></i></span> QuadrigaCX</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column">
<h4>By Coins Traded</h4>
<div>
<ul>
<li><a href="/exchanges/ccex/overview"><span class="menu-pairs">408 Pairs</span>CCEX</a></li>
<li><a href="/exchanges/bittrex/overview"><span class="menu-pairs">284 Pairs</span>Bittrex</a></li>
<li><a href="/exchanges/cryptopia/overview"><span class="menu-pairs">222 Pairs</span>Cryptopia</a></li>
<li><a href="/exchanges/poloniex/overview"><span class="menu-pairs">165 Pairs</span>Poloniex</a></li>
<li><a href="/exchanges/bter/overview"><span class="menu-pairs">147 Pairs</span>BTER</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-4">
<div class="menu-column border-no guide-featured">
<a href="/exchanges/guides/"><h4>Guides</h4></a>
<div>
<ul>
<li class=""><a href="/exchanges/guides/magnr-review/">Magnr Review</a></li>
<li class=""><a href="/exchanges/guides/how-to-use-cexio-to-buy-sell-bitcoins-ethereum-from-your-bank-card/">How to Use CEX.io to Buy &amp; Sell Bitcoins &amp; Ethereum from your Bank Card</a></li>
<li class=""><a href="/exchanges/guides/what-is-bitcoin-transaction-malleability-mt-gox/">What is Bitcoin Transaction malleability – MT GOX?</a></li>
<li class=""><a href="/exchanges/guides/what-are-bitcoin-futures-options-and-cfd-s/">What are Bitcoin Futures, Options and CFD’s?</a></li>
<li class="view-more-menu-link"><a href="/exchanges/guides/">View all exchange guides...</a></li>
</ul>
</div>
</div>
</div>
</li>
</ul>
</li>
<li class="dropdown hidden-xs hidden-sm hidden-md" uib-dropdown on-toggle="toggled(open)">
<a href="/mining/" class="uib-dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" ng-mouseover="menuMining=true" ng-mouseleave="menuMining=false">Mining</a>
<ul class="uib-dropdown-menu megamenu row" ng-class="{'megamenu-visible': menuMining==true}" ng-mouseover="menuMining=true" ng-mouseleave="menuMining=false">
<li>
<div class="col-xs-4">
<div class="menu-column equipment-featured">
<h4>Popular Mining</h4>
<ul>
<li class="">
<a href="/mining/hashcoins/">
<div class="thumb-equipment">
<img data-cfsrc="/media/350644/hashflare.png?anchor=center&mode=crop&width=50&height=50" title="HashCoins" style="display:none;visibility:hidden;"><noscript><img src="/media/350644/hashflare.png?anchor=center&mode=crop&width=50&height=50" title="HashCoins"></noscript>
<div class="equipment-name">
HashCoins </div>
</div>
</a>
</li>
<li class="">
<a href="/mining/pandaminer/">
<div class="thumb-equipment">
<img data-cfsrc="/media/1384006/pandaminer.png?anchor=center&mode=crop&width=50&height=50" title="PandaMiner" style="display:none;visibility:hidden;"><noscript><img src="/media/1384006/pandaminer.png?anchor=center&mode=crop&width=50&height=50" title="PandaMiner"></noscript>
<div class="equipment-name">
PandaMiner </div>
</div>
</a>
</li>
<li class="">
<a href="/mining/nvidia/nvidia-geforce-gtx-1080-ti/">
<div class="thumb-equipment">
<img data-cfsrc="/media/1383573/geforce-gtx-1080ti.png?anchor=center&mode=crop&width=50&height=50" title="nVidia Geforce GTX 1080 TI" style="display:none;visibility:hidden;"><noscript><img src="/media/1383573/geforce-gtx-1080ti.png?anchor=center&mode=crop&width=50&height=50" title="nVidia Geforce GTX 1080 TI"></noscript>
<div class="equipment-name">
nVidia Geforce GTX 1080 TI </div>
</div>
</a>
</li>
<li class="">
<a href="/mining/gpushack/gpushack-hd-7950/">
<div class="thumb-equipment">
<img data-cfsrc="/media/350599/gpushack_hd_7950.jpg?anchor=center&mode=crop&width=50&height=50" title="gpuShack HD 7950" style="display:none;visibility:hidden;"><noscript><img src="/media/350599/gpushack_hd_7950.jpg?anchor=center&mode=crop&width=50&height=50" title="gpuShack HD 7950"></noscript>
<div class="equipment-name">
gpuShack HD 7950 </div>
</div>
</a>
</li>
<li class="item-special">
<a href="/mining/genesis-mining/bitcoin-gold-mining-contract-lifetime-small/">
<div class="thumb-equipment">
<img data-cfsrc="/media/350622/genesis-mining.png?anchor=center&mode=crop&width=50&height=50" title="Bitcoin Gold Mining Contract Lifetime Small" style="display:none;visibility:hidden;"><noscript><img src="/media/350622/genesis-mining.png?anchor=center&mode=crop&width=50&height=50" title="Bitcoin Gold Mining Contract Lifetime Small"></noscript>
<div class="equipment-name">
Bitcoin Gold Mining Contract Lifetime Small </div>
<span class="special-menu-text">Sponsored</span>
</div>
</a>
</li>
<li class="item-special">
<a href="/mining/hashcoins/mining-contract-ethash-small/">
<div class="thumb-equipment">
<img data-cfsrc="/media/350777/hashflare-ethereum.png?anchor=center&mode=crop&width=50&height=50" title="Mining Contract Ethash Small" style="display:none;visibility:hidden;"><noscript><img src="/media/350777/hashflare-ethereum.png?anchor=center&mode=crop&width=50&height=50" title="Mining Contract Ethash Small"></noscript>
<div class="equipment-name">
Mining Contract Ethash Small </div>
<span class="special-menu-text">Sponsored</span>
</div>
</a>
</li>
</ul>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Analysis</h4>
<div>
<ul>
<li><a href="/mining/#/companies">Companies</a></li>
<li><a href="/mining/#/equipment">Equipment</a></li>
<li><a href="/mining/#/contracts">Contracts</a></li>
<li><a href="/mining/#/pools">Mining Pools</a></li>
<li><a href="/mining/calculator/btc">Calculators</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column">
<h4>Mining Calculators</h4>
<div>
<ul>
<li><a href="/mining/calculator/btc">Bitcoin (BTC)</a></li>
<li><a href="/mining/calculator/eth">Ethereum (ETH)</a></li>
<li><a href="/mining/calculator/etc">Ethereum Classic (ETC)</a></li>
<li><a href="/mining/calculator/zec">Zcash (ZEC)</a></li>
<li><a href="/mining/calculator/dash">DigitalCash (DASH)</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-4">
<div class="menu-column border-no guide-featured">
<a href="/mining/guides/"><h4>Guides</h4></a>
<div>
<ul>
<li class=""><a href="/mining/guides/how-to-mine-zcash/">How to mine Zcash</a></li>
<li class=""><a href="/mining/guides/how-to-mine-ethereum/">How to mine Ethereum?</a></li>
<li class=""><a href="/mining/guides/how-to-mine-ethereum-with-minergate-on-any-pc/">How to mine Ethereum with MinerGate (on any PC)</a></li>
<li class=""><a href="/mining/guides/how-to-mine-ethereum-the-easy-way-an-ethereum-mining-contract/">How to mine Ethereum &quot;the Easy Way&quot; - an Ethereum Mining Contract?</a></li>
<li class="view-more-menu-link"><a href="/mining/guides/">View all mining guides ...</a></li>
</ul>
</div>
</div>
</div>
</li>
</ul>
</li>
<li class="dropdown hidden-xs hidden-sm hidden-md" uib-dropdown on-toggle="toggled(open)">
<a href="/wallets/" class="uib-dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" ng-mouseover="menuWallets=true" ng-mouseleave="menuWallets=false">Wallets </a>
<ul class="uib-dropdown-menu megamenu row" ng-class="{'megamenu-visible': menuWallets==true}" ng-mouseover="menuWallets=true" ng-mouseleave="menuWallets=false">
<li>
<div class="col-xs-4">
<div class="menu-column wallets-featured">
<h4>Popular Wallets</h4>
<ul>
<li class="item-special">
<a href="/wallets/zumminer/">
<div class="thumb-wallet">
<img data-cfsrc="/media/12318424/zumminer.png?anchor=center&mode=crop&width=50&height=50" title="Zumminer" style="display:none;visibility:hidden;"><noscript><img src="/media/12318424/zumminer.png?anchor=center&mode=crop&width=50&height=50" title="Zumminer"></noscript>
<div class="wallet-name">
Zumminer </div>
<span class="special-menu-text">Sponsored</span>
</div>
</a>
</li>
<li class="">
<a href="/wallets/exodus/">
<div class="thumb-wallet">
<img data-cfsrc="/media/351280/exodus.png?anchor=center&mode=crop&width=50&height=50" title="Exodus" style="display:none;visibility:hidden;"><noscript><img src="/media/351280/exodus.png?anchor=center&mode=crop&width=50&height=50" title="Exodus"></noscript>
<div class="wallet-name">
Exodus </div>
</div>
</a>
</li>
<li class="">
<a href="/wallets/airbitz-bitcoin-wallet/">
<div class="thumb-wallet">
<img data-cfsrc="/media/20582/airbitz.png?anchor=center&mode=crop&width=50&height=50" title="Airbitz Bitcoin Wallet" style="display:none;visibility:hidden;"><noscript><img src="/media/20582/airbitz.png?anchor=center&mode=crop&width=50&height=50" title="Airbitz Bitcoin Wallet"></noscript>
<div class="wallet-name">
Airbitz Bitcoin Wallet </div>
</div>
</a>
</li>
<li class="">
<a href="/wallets/blockchain-wallet/">
<div class="thumb-wallet">
<img data-cfsrc="/media/19467/blockchain.png?anchor=center&mode=crop&width=50&height=50" title="Blockchain Wallet" style="display:none;visibility:hidden;"><noscript><img src="/media/19467/blockchain.png?anchor=center&mode=crop&width=50&height=50" title="Blockchain Wallet"></noscript>
<div class="wallet-name">
Blockchain Wallet </div>
</div>
</a>
</li>
<li class="">
<a href="/wallets/mycelium-wallet-bitcoin/">
<div class="thumb-wallet">
<img data-cfsrc="/media/19453/mycelium.png?anchor=center&mode=crop&width=50&height=50" title="Mycelium Wallet Bitcoin" style="display:none;visibility:hidden;"><noscript><img src="/media/19453/mycelium.png?anchor=center&mode=crop&width=50&height=50" title="Mycelium Wallet Bitcoin"></noscript>
<div class="wallet-name">
Mycelium Wallet Bitcoin </div>
</div>
</a>
</li>
<li class="">
<a href="/wallets/ethereum-wallet-dapp/">
<div class="thumb-wallet">
<img data-cfsrc="/media/20713/etehreum_wallet.png?anchor=center&mode=crop&width=50&height=50" title="Ethereum Wallet DApp" style="display:none;visibility:hidden;"><noscript><img src="/media/20713/etehreum_wallet.png?anchor=center&mode=crop&width=50&height=50" title="Ethereum Wallet DApp"></noscript>
<div class="wallet-name">
Ethereum Wallet DApp </div>
</div>
</a>
</li>
</ul>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Analysis</h4>
<div>
<ul>
<li><a href="/wallets/#/overview">By user rating</a></li>
<li><a href="/wallets/#/cards">Cards</a></li>
<li><a href="/wallets/#/popular">Popular</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column">
<h4>By Rating</h4>
<div>
<ul>
<li><a href="/wallets/mycelium-wallet-bitcoin/"><span class="menu-stars">4.4 <i class="fa fa-star"></i></span>Mycelium Wallet Bitcoin</a></li>
<li><a href="/wallets/ledger-wallet/"><span class="menu-stars">4.4 <i class="fa fa-star"></i></span>Ledger Wallet</a></li>
<li><a href="/wallets/exodus/"><span class="menu-stars">4.4 <i class="fa fa-star"></i></span>Exodus</a></li>
<li><a href="/wallets/electrum-btc-wallet/"><span class="menu-stars">4.2 <i class="fa fa-star"></i></span>Electrum BTC Wallet</a></li>
<li><a href="/wallets/airbitz-bitcoin-wallet/"><span class="menu-stars">4.1 <i class="fa fa-star"></i></span>Airbitz Bitcoin Wallet</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-4">
<div class="menu-column border-no guide-featured">
<a href="/wallets/guides/"><h4>Guides</h4></a>
<div>
<ul>
<li class=""><a href="/wallets/guides/how-to-use-myetherwallet/">How to use MyEtherWallet</a></li>
<li class=""><a href="/wallets/guides/how-to-use-the-xeth-ethereum-wallet/">How to use the XETH Ethereum Wallet</a></li>
<li class=""><a href="/wallets/guides/what-is-a-bitcoin-paper-wallet/">What is a Bitcoin Paper Wallet?</a></li>
<li class=""><a href="/wallets/guides/what-is-a-bitcoin-hardware-wallet/">What is a Bitcoin Hardware Wallet?</a></li>
<li class="view-more-menu-link"><a href="/wallets/guides/">View all wallet guides ...</a></li>
</ul>
</div>
</div>
</div>
</li>
</ul>
</li>
<li class="dropdown hidden-xs hidden-sm hidden-md" uib-dropdown on-toggle="toggled(open)">
<a href="/spend/" class="uib-dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" ng-mouseover="menuSpend=true" ng-mouseleave="menuSpend=false">Spend </a>
<ul class="uib-dropdown-menu megamenu row" ng-class="{'megamenu-visible': menuSpend==true}" ng-mouseover="menuSpend=true" ng-mouseleave="menuSpend=false">
<li>
<div class="col-xs-4">
<div class="menu-column spend-featured">
<h4>Popular Spend</h4>
<ul>
<li class="">
<a href="/spend/gambling/mbit-casino/">
<div class="thumb-spend">
<img data-cfsrc="/media/12318200/mbit.png?anchor=center&mode=crop&width=50&height=50" title="mBit Casino" style="display:none;visibility:hidden;"><noscript><img src="/media/12318200/mbit.png?anchor=center&mode=crop&width=50&height=50" title="mBit Casino"></noscript>
<div class="spend-name">
mBit Casino </div>
</div>
</a>
</li>
<li class="">
<a href="/spend/gambling/primedice/">
<div class="thumb-spend">
 <img data-cfsrc="/media/1382120/primedice.png?anchor=center&mode=crop&width=50&height=50" title="PrimeDice" style="display:none;visibility:hidden;"><noscript><img src="/media/1382120/primedice.png?anchor=center&mode=crop&width=50&height=50" title="PrimeDice"></noscript>
<div class="spend-name">
PrimeDice </div>
</div>
</a>
</li>
<li class="">
<a href="/spend/gambling/onehash/">
<div class="thumb-spend">
<img data-cfsrc="/media/11999098/onehash.png?anchor=center&mode=crop&width=50&height=50" title="OneHash" style="display:none;visibility:hidden;"><noscript><img src="/media/11999098/onehash.png?anchor=center&mode=crop&width=50&height=50" title="OneHash"></noscript>
<div class="spend-name">
OneHash </div>
</div>
</a>
</li>
<li class="">
<a href="/spend/gambling/crypto-games/">
<div class="thumb-spend">
<img data-cfsrc="/media/1382121/crypto-games.png?anchor=center&mode=crop&width=50&height=50" title="Crypto-Games" style="display:none;visibility:hidden;"><noscript><img src="/media/1382121/crypto-games.png?anchor=center&mode=crop&width=50&height=50" title="Crypto-Games"></noscript>
<div class="spend-name">
Crypto-Games </div>
</div>
</a>
</li>
<li class="">
<a href="/spend/gambling/sportsbetio/">
<div class="thumb-spend">
<img data-cfsrc="/media/1382181/sportsbetio.png?anchor=center&mode=crop&width=50&height=50" title="Sportsbet.io" style="display:none;visibility:hidden;"><noscript><img src="/media/1382181/sportsbetio.png?anchor=center&mode=crop&width=50&height=50" title="Sportsbet.io"></noscript>
<div class="spend-name">
Sportsbet.io </div>
</div>
</a>
</li>
<li class="">
<a href="/spend/gambling/rollin/">
<div class="thumb-spend">
<img data-cfsrc="/media/1382193/rollin.png?anchor=center&mode=crop&width=50&height=50" title="Rollin" style="display:none;visibility:hidden;"><noscript><img src="/media/1382193/rollin.png?anchor=center&mode=crop&width=50&height=50" title="Rollin"></noscript>
<div class="spend-name">
Rollin </div>
</div>
</a>
</li>
</ul>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Analysis</h4>
<div>
<ul>
<li><a href="/spend/#/gambling">Gambling</a></li>
<li><a href="/spend/#/popular">Popular</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column">
<h4>By Rating</h4>
<div>
<ul>
<li><a href="/spend/gambling/chopcoin"><span class="menu-stars">4.8 <i class="fa fa-star"></i></span>Chopcoin</a></li>
<li><a href="/spend/gambling/crypto-games"><span class="menu-stars">3.4 <i class="fa fa-star"></i></span>Crypto-Games</a></li>
<li><a href="/spend/gambling/mbit-casino"><span class="menu-stars">3.3 <i class="fa fa-star"></i></span>mBit Casino</a></li>
<li><a href="/spend/gambling/just-dice"><span class="menu-stars">3.2 <i class="fa fa-star"></i></span>Just-Dice</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-4">
<div class="menu-column border-no guide-featured">
<a href="/spend/guides/"><h4>Guides</h4></a>
<div>
<ul>
<li class=""><a href="/spend/guides/how-to-always-win-on-onehash/">How to always win on OneHash</a></li>
<li class=""><a href="/spend/guides/how-to-get-gambling-deposit-and-cashback-bonuses-on-1xbit/">How to get gambling deposit and cashback bonuses on 1xBit</a></li>
<li class=""><a href="/spend/guides/where-to-spend-your-bitcoins/">Where to spend your Bitcoins</a></li>
<li class=""><a href="/spend/guides/how-to-bet-on-the-house/">How to bet on the House</a></li>
<li class="view-more-menu-link"><a href="/spend/guides/">View all spend guides ...</a></li>
</ul>
</div>
</div>
</div>
</li>
</ul>
</li>
<li class="dropdown hidden-xs hidden-sm hidden-md" uib-dropdown on-toggle="toggled(open)">
<a href="/forum/" class="uib-dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" ng-mouseover="menuForum=true" ng-mouseleave="menuForum=false">Forum</a>
<ul class="uib-dropdown-menu megamenu row" ng-class="{'megamenu-visible': menuForum==true}" ng-mouseover="menuForum=true" ng-mouseleave="menuForum=false">
<li>
<div class="col-xs-4">
<div class="menu-column coins-featured">
<h4>Popular Forums</h4>
<ul>
<li class="item-special">
<a href="/coins/utk/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/9350717/utrust.png?anchor=center&mode=crop&width=32&height=32" title="UTK" style="display:none;visibility:hidden;"><noscript><img src="/media/9350717/utrust.png?anchor=center&mode=crop&width=32&height=32" title="UTK"></noscript>
</div>
<div class="coins-name">
Utrust
</div>
<span class="special-menu-text">Sponsored</span>
</a>
</li>
<li class="item-special">
<a href="/coins/elm/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/12318308/elm.png?anchor=center&mode=crop&width=32&height=32" title="ELM" style="display:none;visibility:hidden;"><noscript><img src="/media/12318308/elm.png?anchor=center&mode=crop&width=32&height=32" title="ELM"></noscript>
</div>
<div class="coins-name">
Elements
</div>
<span class="special-menu-text">Sponsored</span>
</a>
</li>
<li class="">
<a href="/coins/btc/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/19633/btc.png?anchor=center&mode=crop&width=32&height=32" title="BTC" style="display:none;visibility:hidden;"><noscript><img src="/media/19633/btc.png?anchor=center&mode=crop&width=32&height=32" title="BTC"></noscript>
</div>
<div class="coins-name">
Bitcoin
</div>
</a>
</li>
<li class="">
<a href="/coins/eth/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/20646/eth_logo.png?anchor=center&mode=crop&width=32&height=32" title="ETH" style="display:none;visibility:hidden;"><noscript><img src="/media/20646/eth_logo.png?anchor=center&mode=crop&width=32&height=32" title="ETH"></noscript>
</div>
<div class="coins-name">
Ethereum
</div>
</a>
</li>
<li class="">
<a href="/coins/ltc/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/19782/litecoin-logo.png?anchor=center&mode=crop&width=32&height=32" title="LTC" style="display:none;visibility:hidden;"><noscript><img src="/media/19782/litecoin-logo.png?anchor=center&mode=crop&width=32&height=32" title="LTC"></noscript>
</div>
<div class="coins-name">
Litecoin
</div>
</a>
</li>
<li class="">
<a href="/coins/dash/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/20626/imageedit_27_4355944719.png?anchor=center&mode=crop&width=32&height=32" title="DASH" style="display:none;visibility:hidden;"><noscript><img src="/media/20626/imageedit_27_4355944719.png?anchor=center&mode=crop&width=32&height=32" title="DASH"></noscript>
</div>
<div class="coins-name">
DigitalCash
</div>
</a>
</li>
<li class="">
<a href="/coins/xmr/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/19969/xmr.png?anchor=center&mode=crop&width=32&height=32" title="XMR" style="display:none;visibility:hidden;"><noscript><img src="/media/19969/xmr.png?anchor=center&mode=crop&width=32&height=32" title="XMR"></noscript>
</div>
<div class="coins-name">
Monero
</div>
</a>
</li>
<li class="">
<a href="/coins/nxt/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/20627/nxt.png?anchor=center&mode=crop&width=32&height=32" title="NXT" style="display:none;visibility:hidden;"><noscript><img src="/media/20627/nxt.png?anchor=center&mode=crop&width=32&height=32" title="NXT"></noscript>
</div>
<div class="coins-name">
Nxt
</div>
</a>
</li>
<li class="">
<a href="/coins/zec/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/351360/zec.png?anchor=center&mode=crop&width=32&height=32" title="ZEC" style="display:none;visibility:hidden;"><noscript><img src="/media/351360/zec.png?anchor=center&mode=crop&width=32&height=32" title="ZEC"></noscript>
</div>
<div class="coins-name">
ZCash
</div>
</a>
</li>
<li class="">
<a href="/coins/dgb/forum">
<div class="thumb-coin">
<img data-cfsrc="/media/12318264/7638-nty_400x400.jpg?anchor=center&mode=crop&width=32&height=32" title="DGB" style="display:none;visibility:hidden;"><noscript><img src="/media/12318264/7638-nty_400x400.jpg?anchor=center&mode=crop&width=32&height=32" title="DGB"></noscript>
</div>
 <div class="coins-name">
DigiByte
</div>
</a>
</li>
</ul>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Top Coin Forums</h4>
<div>
<ul>
<li><a href="/forum/#/coin">Coin Discussion</a></li>
<li><a href="/forum/#/exchange">Exchange Discussion</a></li>
<li><a href="/forum/#/latest-posts">Latest Posts</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Top Cryptopians</h4>
<div>
<ul>
<li><a href="/">Coming Soon!</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-4">
<div class="menu-column border-no">
<a href="/forum/guides/"><h4>Guides</h4></a>
<div>
<ul>
<li><a href="/forum/guides/cryptocomparecom-who-we-are/">CryptoCompare.com - Who we are!</a></li>
<li><a href="/forum/guides/how-to-loginregister-with-cryptocomparecom/">How to Login/Register with CryptoCompare.com?</a></li>
<li><a href="/forum/guides/how-to-use-cryptocompare-forums/">How to use CryptoCompare forums?</a></li>
<li><a href="/forum/guides/how-to-review-products-on-cryptocompare/">How to review products on CryptoCompare?</a></li>
<li class="view-more-menu-link"><a href="/forum/guides/">View all forum guides ...</a></li>
</ul>
</div>
</div>
</div>
</li>
</ul>
</li>
<li class="dropdown hidden-xs hidden-sm hidden-md" uib-dropdown on-toggle="toggled(open)">
<a href="/portfolio/" class="uib-dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" ng-mouseover="menuPortfolio=true" ng-mouseleave="menuPortfolio=false">Portfolio</a>
<ul class="uib-dropdown-menu megamenu row" ng-class="{'megamenu-visible': menuPortfolio==true}" ng-mouseover="menuPortfolio=true" ng-mouseleave="menuPortfolio=false">
<li>
<div class="col-xs-6">
<div class="menu-column portfolio-example-featured">
<h4>Example portfolios</h4>
<ul>
<li>
<a href="https://www.cryptocompare.com/portfolio-public/?id=4800">
<div class="thumb-portfolio-example">
<img data-cfsrc="/media/1382953/marketcapwghted.png?anchor=center&amp;mode=crop&amp;width=150" title="Market cap weighted" style="display:none;visibility:hidden;"><noscript><img src="/media/1382953/marketcapwghted.png?anchor=center&amp;mode=crop&amp;width=150" title="Market cap weighted"></noscript>
</div>
<div class="portfolio-example-name">
Market cap weighted </div>
</a>
</li>
<li>
<a href="https://www.cryptocompare.com/portfolio-public/?id=5955">
<div class="thumb-portfolio-example">
<img data-cfsrc="/media/1382951/pricewghtedshort.png?anchor=center&amp;mode=crop&amp;width=150" title="Equally weighted" style="display:none;visibility:hidden;"><noscript><img src="/media/1382951/pricewghtedshort.png?anchor=center&amp;mode=crop&amp;width=150" title="Equally weighted"></noscript>
</div>
<div class="portfolio-example-name">
Equally weighted </div>
</a>
</li>
<li>
<a href="https://www.cryptocompare.com/portfolio-public/?id=8897">
<div class="thumb-portfolio-example">
<img data-cfsrc="/media/1382952/iconew.png?anchor=center&amp;mode=crop&amp;width=150" title="Popular ICOs" style="display:none;visibility:hidden;"><noscript><img src="/media/1382952/iconew.png?anchor=center&amp;mode=crop&amp;width=150" title="Popular ICOs"></noscript>
</div>
<div class="portfolio-example-name">
Popular ICOs </div>
</a>
</li>
</ul>
</div>
</div>
<div class="col-xs-2">
<div class="menu-column border-left">
<h4>Type</h4>
<div>
<ul>
<li><a href="/portfolio/">My Portfolios</a></li>
<li><a href="/portfolio-public/">Public Portfolios</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-4">
<div class="menu-column border-no">
<a href="/forum/guides/"><h4>Guides</h4></a>
<div>
<ul>
<li><a href="/portfolio/guides/cryptocompare-portfolio-faq/">CryptoCompare Portfolio FAQ</a></li>
<li><a href="/portfolio/guides/how-to-add-sold-coins-on-the-cryptocompare-portfolio/">How to Add Sold Coins on the CryptoCompare Portfolio</a></li>
<li><a href="/portfolio/guides/how-to-build-a-cryptocurrency-portfolio/">How to Build a Cryptocurrency Portfolio</a></li>
<li><a href="/portfolio/guides/how-to-use-the-cryptocompare-portfolio-risk-analysis-tab/">How to Use the CryptoCompare Portfolio Risk Analysis tab</a></li>
<li class="view-more-menu-link"><a href="/portfolio/guides/">View all portfolio guides ...</a></li>
</ul>
</div>
</div>
</div>
</li>
</ul>
</li>
</ul>
<ul class="nav navbar-nav visible-xs visible-sm visible-md">
<li class="dropdown" uib-dropdown>
<a href="#" class="dropdown-toggle" uib-dropdown-toggle><i class="fa fa-ellipsis-v"></i> <span class="caret"></span></a>
<ul class="uib-dropdown-menu">
<li class="visible-sm"><a href="/coins/">Coins</a></li>
<li class="visible-sm"><a href="/exchanges/">Exchanges</a></li>
<li><a href="/mining/">Mining</a></li>
<li><a href="/wallets/">Wallets</a></li>
<li><a href="/spend/">Spend</a></li>
<li><a href="/forum/">Forum</a></li>
<li><a href="/portfolio/">Portfolio</a></li>
<li><a href="/portfolio-public/">Public Portfolios</a></li>
</ul>
</li>
</ul>
<div class="search-top pull-left hidden-xs" ng-controller="AutosuggestCtrl">
<form class="navbar-form full-width">
<div class="form-group">
<i class="glyphicon glyphicon-search"></i>
<input class="form-control" type="text" ng-model="asyncDataResult" typeahead-template-url="general/auto-suggest-result.html" placeholder="Type to search..." typeahead-wait-ms=200 uib-typeahead="result as result.nodeName for result in getAutosuggest($viewValue)" typeahead-loading="loadingData" typeahead-on-select='onSelect($item, $model, $label)' autofocus>
<i ng-show="loadingData" class="glyphicon glyphicon-refresh glyphicon-spin ng-hide"></i>
</div>
</form>
</div>
<ul class="nav navbar-nav navbar-right" ng-controller="DropdownMenuUserSectionCtrl">
<li ng-show="!userManager.isLoggedIn()">
<a href="" ng-click="showLogin()">
<i class="fa fa-cogs"></i> Login / Register
</a>
</li>
<li class="dropdown ng-hide" uib-dropdown on-toggle="toggled(open,'notifications')" ng-show="userManager.isLoggedIn()&&!userManager.isLoggedIn()">
<a href class="dropdown-toggle nav-notifications notices" uib-dropdown-toggle>
<span class="fa fa-bell"></span>
<span class="badge badge-on" ng-show="notificationsManager.getNewNotificaticationsCount()>0" ng-bind="notificationsManager.getNewNotificaticationsCount()"></span>
</a>
<div class="uib-dropdown-menu with-arrow dropdown-menu-md" role="menu">
<div class="nano">
<div class="nano-content">
<ul class="head-list">
<notification-action ng-repeat="(key,notification) in notificationsManager.getNotifications()" notification="notification"></notification-action>
</ul>
</div>
</div>
</div>
</li>
<li class="dropdown navbar-profile ng-hide" uib-dropdown on-toggle="toggled(open,'profile')" ng-show="userManager.isLoggedIn()">
<a href class="dropdown-toggle nav-profile" uib-dropdown-toggle>
<img ng-src="{{userManager.getAvatarUrl()}}" class="navbar-profile-avatar" alt="" />
<span class="navbar-profile-label" ng-bind="userManager.getUsername()"></span>
<i class="fa fa-caret-down"></i>
</a>
<ul class="uib-dropdown-menu" role="menu">
<li>
<a href="" ng-click="showTipUs()">
<i class="fa fa-money"></i>Tip us
</a>
</li>
<li>
<a href="/quiz/">
<i class="fa fa-question"></i> Quiz
</a>
</li>
<li>
<a ng-href="/profile/{{userManager.getUsername()}}/">
<i class="fa fa-user"></i> View My Profile
</a>
</li>
<li>
<a href="/cryptopian/">
<i class="fa fa-cogs"></i> Edit My Profile
</a>
</li>
<li class="dropdown">
<a href="" ng-click="switchLights()">
<i class="fa fa-lightbulb-o"></i>Turn {{LightsStatus}}
</a>
</li>
<li class="divider"></li>
<li>
<a href ng-click='userManager.logout()'>
<i class="fa fa-sign-out"></i> Logout
</a>
</li>
</ul>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="main-wrapper">
<div class="container">
<div class='row'>
<script type="text/ng-template" id="streamers/chart-with-trade-data.html">
	<div class="panel panel-chartie" ng-class="{'trend-up':trendup, 'trend-down':!trendup}">
		<div class="panel-heading">
			<a ng-href="/coins/{{connection.data[0].DATA.FROMSYMBOL.toLowerCase()}}/overview/{{connection.data[0].DATA.TOSYMBOL}}" ng-attr-title="{{connection.data[0].DATA.FROMSYMBOL}} - {{connection.data[0].DATA.TOSYMBOL}} streaming prices, trades, forum discussion, charts and analysis.">
				{{connection.data[0].DATA.FROMSYMBOL+' - '+connection.data[0].DATA.TOSYMBOL}}
			</a>
			<span class="pull-right label label-volume" ng-class="{'highlight-text':connection.data[0].VISUAL.VOLUME24HOUR}">Vol: {{connection.data[0].DISPLAY.VOLUME24HOUR}}</span>
		</div>
		<div class="panel-body">                    
			<div>
				<div class="trend-values">
					<a
						ng-href="{{link}}"
						class="btn btn-home-trade btn-xs pull-right"
						ng-if="link!==''"
						target="_blank"
					>
						{{linktext}}
					</a>
					<span class="trend-currency" ng-class="{'highlight-up':connection.data[0].VISUAL.PRICEUP, 'highlight-down':connection.data[0].VISUAL.PRICEDOWN, 'highlight-unchanged':connection.data[0].VISUAL.PRICEUNCHANGED}">
						{{connection.data[0].DISPLAY.PRICE}}
					</span>
					<span class="trend-percent" ng-class="{'up-text':connection.data[0].DATA.CHANGE24HOUR>=0, 'down-text':connection.data[0].DATA.CHANGE24HOUR<0}">
						({{connection.data[0].DISPLAY.CHANGEPCT24HOUR}}%)
					</span>
				</div>
				<div id="{{charttype+'-'+exchange+'-'+fromsymbol+'-'+tosymbol}}" style="width:100%; height:70px;"></div>
			</div>
		</div>
		<div class="panel-footer"  ng-class="{'highlight-up':connection.data[0].VISUAL.PRICEUP, 'highlight-down':connection.data[0].VISUAL.PRICEDOWN, 'highlight-unchanged':connection.data[0].VISUAL.PRICEUNCHANGED}">
			<div class="last-trade">
				<div class="trade-body">
					<table class="table">
						<tr>
							<td title="{{connection.data[0].DISPLAY.LASTUPDATE}}">{{DateParsing.formatFromNow(connection.data[0].DATA.LASTUPDATE*1000)}}</td>
							<td>
								<a ng-href="/exchanges/{{connection.data[0].DISPLAY.LASTMARKET.toLowerCase()}}/overview/{{connection.data[0].DATA.TOSYMBOL}}" class="link-exchange" ng-attr-title="{{connection.data[0].DISPLAY.LASTMARKET}} streaming prices, trades, reviews, forum discussion, charts and analysis.">
									{{connection.data[0].DISPLAY.LASTMARKET}}
								</a>
							</td>
							<td>{{connection.data[0].DISPLAY.LASTVOLUME}}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</script>
<div class="hero-charts">
<div class="swiper-pagination-chartie"></div>
<div class="swiper-wrapper-chartie">
<div class="col-xs-12 col-sm-6 col-lg-3">
<chart-with-trade-data charttype="top-hourly" subtype="5" exchange="CCCAGG" fromsymbol="BTC" tosymbol="USD" maxpoints="24" link="" linktext="TRADE NOW">
</chart-with-trade-data>
</div>
<div class="col-xs-12 col-sm-6 col-lg-3">
<chart-with-trade-data charttype="top-hourly" subtype="5" exchange="CCCAGG" fromsymbol="ETH" tosymbol="USD" maxpoints="24" link="" linktext="TRADE NOW">
</chart-with-trade-data>
</div>
<div class="col-xs-12 col-sm-6 col-lg-3">
<chart-with-trade-data charttype="top-hourly" subtype="5" exchange="CCCAGG" fromsymbol="DASH" tosymbol="USD" maxpoints="24" link="" linktext="TRADE NOW">
</chart-with-trade-data>
</div>
<div class="col-xs-12 col-sm-6 col-lg-3">
<chart-with-trade-data charttype="top-hourly" subtype="5" exchange="CCCAGG" fromsymbol="ZEC" tosymbol="USD" maxpoints="24" link="" linktext="TRADE NOW">
</chart-with-trade-data>
</div>
</div>
</div>
</div>
<div class="row clearmargins">
<script type="text/ng-template" id="streamers/featured-coins.html">
	<div class="section section-hero">
		<div class="featured-coins-header shadowed">Featured coins</div>
		<div class="col-md-12 swiper-container">
			<ul class="featured-coins swiper-wrapper">
				<li class="swiper-slide shadowed" ng-repeat="(key,sub) in subs" ng-class="{'coin-up':connection.data[key].DATA.CHANGE24HOUR>=0, 'coin-down':connection.data[key].DATA.CHANGE24HOUR<0, 'coin-unchanged':connection.data[key].DATA.CHANGE24HOUR==0}">
					<a ng-href="/coins/{{connection.data[key].DATA.FROMSYMBOL.toLowerCase()}}/overview/{{connection.data[key].DATA.TOSYMBOL}}" title="{{names[key]}} ({{connection.data[key].DATA.FROMSYMBOL}} - {{connection.data[key].DATA.TOSYMBOL}}) streaming prices, trades, forum, charts and analysis.">
						<div class="coins-name">
							{{names[key]}} 
							<span class="label-percent pull-right" ng-class="{'text-bold':connection.data[key].VISUAL.CHANGE24HOUR,'up-text':connection.data[key].DISPLAY.CHANGE24HOURUP, 'down-text':connection.data[key].DISPLAY.CHANGE24HOURDOWN, 'unchanged-text':connection.data[key].DISPLAY.CHANGE24HOURUNCHANGED}">
								{{connection.data[key].DISPLAY.CHANGEPCT24HOUR}}%
							</span>
						</div>
						<div class="coin-info">
							<div class="price-current" ng-class="{'highlight-up':connection.data[key].VISUAL.PRICEUP, 'highlight-down':connection.data[key].VISUAL.PRICEDOWN, 'highlight-unchanged':connection.data[key].VISUAL.PRICEUNCHANGED}">
								{{connection.data[key].DISPLAY.PRICE}}
							</div>
							<div class="price-trend">
								<i class="fa" ng-class="{'up-text fa-caret-up':connection.data[key].DATA.CHANGE24HOUR>=0, 'down-text fa-caret-down':connection.data[key].DATA.CHANGE24HOUR<0}" ng-if="connection.data[key].DATA.CHANGE24HOUR!=0"></i>
							</div>
						</div>
						<div class="coin-other" ng-class="{'highlight-text':connection.data[key].VISUAL.VOLUME24HOURTO}">
							V: {{connection.data[key].DISPLAY.VOLUME24HOURTO}}
						</div>
					</a>
				</li>
			</ul>
			<div class="swiper-pagination"></div>			
		</div>
	</div>
</script>
<featured-coins subs='[&quot;5~CCCAGG~BTC~EUR&quot;,&quot;5~CCCAGG~BCH~BTC&quot;,&quot;5~CCCAGG~ETH~EUR&quot;,&quot;5~CCCAGG~ETH~BTC&quot;,&quot;5~CCCAGG~ETC~BTC&quot;,&quot;5~CCCAGG~ZEC~BTC&quot;,&quot;5~CCCAGG~XMR~USD&quot;,&quot;5~CCCAGG~XMR~BTC&quot;,&quot;5~CCCAGG~DASH~BTC&quot;,&quot;5~CCCAGG~LTC~BTC&quot;,&quot;5~CCCAGG~DOGE~BTC&quot;,&quot;5~CCCAGG~NXT~BTC&quot;,&quot;5~CCCAGG~BTCD~BTC&quot;,&quot;5~CCCAGG~XRP~BTC&quot;,&quot;5~CCCAGG~PPC~BTC&quot;]' names='[&quot;Bitcoin&quot;,&quot;BTC Cash&quot;,&quot;Ethereum&quot;,&quot;Ethereum&quot;,&quot;Eth Classic&quot;,&quot;Zcash&quot;,&quot;Monero&quot;,&quot;Monero&quot;,&quot;DigitalCash&quot;,&quot;Litecoin&quot;,&quot;Dogecoin&quot;,&quot;Next&quot;,&quot;BitcoinDark&quot;,&quot;Ripple&quot;,&quot;PeerCoin&quot;]'></featured-coins>
<div class="section">
<div class="featured-icon"><span class="fa fa-comments"></span></div>
<h2 class="heading">We are social</h2>
<div class="colored-line"></div>
<div class="subtitle col-centered col-md-8">
<b><i>CryptoCompare</i></b> is an interactive platform where you can discuss the latest Crypto trends and monitor all markets streaming in real time
</div>
<div class='col-md-6'>
<script type="text/ng-template" id="reviews/container-no-new.html">
	<review-no-reply ng-repeat="(key,currentReview) in reviewData" review="currentReview" id="review-{{currentReview.Id}}">
	</review-no-reply>
</script>
<script type="text/ng-template" id="reviews/review-no-reply.html">
	<div class="item-review">
		<a class="item-photo" ng-href="{{review.Parent.Url}}">
			<img ng-src="{{review.Parent.LogoUrl+'?anchor=center&mode=crop&width=80&height=80'}}" class="img-responsive">
		</a>
		<div class="item-content">	
			<div class="timeline-header">
				<div class="entry-options pull-right">
					<div class="btn-group" ng-controller="DropdownCtrl">
						<span class="dropdown" uib-dropdown on-toggle="toggled(open)">
							<button class="fa fa-ellipsis-v btn btn-xs btn-options dropdown-toggle" uib-dropdown-toggle></button>
							<ul class="uib-dropdown-menu dropdown-right with-arrow with-arrow-right dropdown-small">
								<li ng-if="!isDeleted">
									<a href="" ng-click="shareFacebook()" >
										<i class="fa fa-facebook"></i> Share
									</a>
								</li>
								<li ng-if="!isDeleted">
									<a href="" ng-click="shareTwitter()" >
										<i class="fa fa-twitter"></i> Tweet
									</a>
								</li>
								<li ng-if="!isDeleted">
									<a href="" ng-click="shareGooglePlus()" >
										<i class="fa fa-google-plus"></i> Share on G+
									</a>
								</li>
								<li ng-if="!isDeleted">
									<a ng-href="{{linkToReview}}" title="Visit this review on a standalone page.">
										<i class="fa fa-bookmark"></i> Link to review
									</a>
								</li>
								<li ng-if="review.Notification">
									<a href="" ng-click="reviewNotificationOnOffClick()" title="You are receiving email notifications on new comments. Click here to stop them.">
										<i class="fa fa-bell-slash"></i> Stop Email Notifications
									</a>
								</li>
								<li ng-if="!review.Notification">
									<a href="" ng-click="reviewNotificationOnOffClick()" title="You are NOT receiving email notifications on new comments. Click here to start them.">
										<i class="fa fa-bell"></i> Start Email Notifications
									</a>
								</li>
								<li class="divider"></li>
								<li ng-if="!isDeleted" ng-hide="review.Actions.Report.Involved">
									<a href="" ng-click="reviewReportClick()" >
										<i class="fa fa-exclamation-triangle"></i> Report
									</a>
								</li>
								<li ng-if="!isDeleted" ng-show="review.Actions.Report.Involved">
									<a href="" ng-click="reviewReportClick()" >
										<i class="fa fa-exclamation-triangle"></i> Already Reported
									</a>
								</li>
								<li ng-if="userManager.isLoggedIn() && userManager.canDelete() && !isDeleted">
									<a href="" ng-click="deleteReviewClick()" >
										<i class="fa fa-trash-o"></i> Delete
									</a>
								</li>
								<li ng-if="userManager.isLoggedIn() && userManager.canDelete() && isDeleted">
									<a href="" ng-click="reverseDeleteReviewClick()" >
										<i class="fa fa-undo"></i> Reverse Delete
									</a>
								</li>
							</ul>
						</span>
					</div>
				</div>
				<div class="user-info">
					<a ng-href="{{review.Parent.Url}}" class="entry-product">{{review.Parent.Name}}</a><br>
				</div>
			</div>
			<div class="review-stuff">
				<div class="review-stars">
					 <uib-rating ng-model="review.Rating" max="5" readonly="true" class="current-rewiew pull-right"></uib-rating>
				</div>
				<ul class="item-properties">
					<li class="property-user">
						<username-options cryptopian="review.Cryptopian" icon="true" avatar="false"></username-options>
					</li>								
					<li class="property-time" title="{{DateParsing.formatLongDate(review.Timestamp)}}">
						<span class="fa fa-clock-o"></span> {{DateParsing.formatFromNow(review.Timestamp)}}
					</li>
				</ul>						 
			</div>								
			<div class="timeline-content">	
				<p ng-bind-html="review.Body | cutText:false:140"></p>
			</div>
			<div class="footer">
				<div class="item-info pull-left">
					<a ng-href="{{review.Parent.Url}}" class="btn-comments-more">
						<span class="fa fa-reply"></span> Reply
						<span class="counter-action">{{review.Actions.Comment.Total}}</span>
					</a>
				</div>
				<div class="forum-action forum-action-dislike pull-right">
					<div ng-hide="review.Actions.Disagree.Involved">
						<a href="" ng-click="reviewDisagreeClick()" class="link-dislike"><span class="fa fa-thumbs-o-down text-red"></span> <span class="action-text">Disagree</span></a>
						<a href="" ng-click="showDisagreeCryptopians()" class="counter-action"><span class="">{{review.Actions.Disagree.Total}}</span></a>
					</div>
					<div ng-show="review.Actions.Disagree.Involved" class="already-disagreed">
					  <a href="" ng-click="reviewDisagreeClick()" class="link-dislike"><span class="fa fa-thumbs-down text-red"></span> <span class="action-text">Disagree</span></a>
					  <a href="" ng-click="showDisagreeCryptopians()" class="counter-action"><span class="">{{review.Actions.Disagree.Total}}</span></a>
					</div>
				</div>
				<div class="forum-action forum-action-like pull-right">
					<div ng-hide="review.Actions.Agree.Involved">
						<a href="" ng-click="reviewAgreeClick()" class="link-like"><span class="fa fa-thumbs-o-up text-green"></span> <span class="action-text">Agree</span></a> 
						<a href="" ng-click="showAgreeCryptopians()" class="counter-action"><span class="">{{review.Actions.Agree.Total}}</span></a>
					</div>
					<div ng-show="review.Actions.Agree.Involved" class="already-liked">
					  <a href="" ng-click="reviewAgreeClick()" class="link-like"><span class="fa fa-thumbs-up text-green"></span> <span class="action-text">Agree</span></a>
					  <a href="" ng-click="showAgreeCryptopians()" class="counter-action "><span class="">{{review.Actions.Agree.Total}}</span></a>
					</div>
				</div>
			</div>			
		</div>
	</div>
</script>
<div class="panel panel-reviews">
<div class="panel-heading"><span class="fa fa-star"></span>Latest user reviews</div>
<div class="panel-body">
<reviews-container-no-new></reviews-container-no-new>
</div>
</div>
</div>
<div class="col-md-6">
<script type="text/ng-template" id="forum/container-no-new.html">
	<forum-post-no-reply ng-repeat="(key,currentPost) in postData" post="currentPost" id="post-{{currentPost.Id}}">
	</forum-post-no-reply>
</script>
<script type="text/ng-template" id="forum/post-no-reply.html">
	<div class="item-forum" id="forum-post-{{post.Id}}">
		<div class="forum-category">
			<a ng-href="{{post.Parent.Url}}" class="link-forum-xs">{{post.Parent.Name}} Forum</a>
		</div>
		<div class="timeline-header">			
			<div class="entry-options pull-right">
				<div class="btn-group" ng-controller="DropdownCtrl">
					<div class="dropdown" uib-dropdown on-toggle="toggled(open)">
						<i class="fa fa-ellipsis-v btn btn-xs btn-options dropdown-toggle" uib-dropdown-toggle ng-if="post.Sticky==false"></i>
						<i class="fa fa-thumb-tack dropdown-toggle sticky-post" uib-dropdown-toggle ng-if="post.Sticky==true"></i>
						<ul class="uib-dropdown-menu dropdown-right dropdown-small with-arrow with-arrow-right">
							<li ng-if="!isDeleted">
								<a href="" ng-click="shareFacebook()" >
									<i class="fa fa-facebook"></i> Share
								</a>
							</li>
							<li ng-if="!isDeleted">
								<a href="" ng-click="shareTwitter()" >
									<i class="fa fa-twitter"></i> Tweet
								</a>
							</li>
							<li ng-if="!isDeleted">
								<a href="" ng-click="shareGooglePlus()" >
									<i class="fa fa-google-plus"></i> Share on G+
								</a>
							</li>
							<li ng-if="!isDeleted">
								<a ng-href="{{linkToPost}}" title="Visit this post on a standalone page.">
									<i class="fa fa-bookmark"></i> Link to post
								</a>
							</li>
							<li ng-if="post.Notification">
								<a href="" ng-click="postNotificationOnOffClick()" title="You are receiving email notifications on new comments. Click here to stop them.">
									<i class="fa fa-bell-slash"></i> Stop Email Notifications
								</a>
							</li>
							<li ng-if="!post.Notification">
								<a href="" ng-click="postNotificationOnOffClick()" title="You are NOT receiving email notifications on new comments. Click here to start them.">
									<i class="fa fa-bell"></i> Start Email Notifications
								</a>
							</li>
							<li ng-if="userManager.isLoggedIn() && userManager.canDelete() && !isDeleted">
								<a href="" ng-click="deletePostClick()" >
									<i class="fa fa-trash-o"></i> Delete
								</a>
							</li>
							<li ng-if="userManager.isLoggedIn() && userManager.canDelete() && isDeleted">
								<a href="" ng-click="reverseDeletePostClick()" >
									<i class="fa fa-undo"></i> Reverse Delete
								</a>
							</li>
							<li class="divider"></li>
							<li ng-if="!isDeleted" ng-hide="post.Actions.Report.Involved">
								<a href="" ng-click="postReportClick()" >
									<i class="fa fa-exclamation-triangle"></i> Report
								</a>
							</li>
							<li ng-if="!isDeleted" ng-show="post.Actions.Report.Involved">
								<a href="" ng-click="postReportClick()" >
									<i class="fa fa-exclamation-triangle"></i> Already Reported
								</a>
							</li>
							<li ng-if="userManager.isLoggedIn() && userManager.canMakeSticky() && !post.Sticky">
								<a href="" ng-click="makeStickyPostClick()" >
									<i class="fa fa-thumb-tack"></i> Make Sticky
								</a>
							</li>
							<li ng-if="userManager.isLoggedIn() && userManager.canMakeSticky() && post.Sticky">
								<a href="" ng-click="makeStickyPostClick()" >
									<i class="fa fa-thumb-tack"></i> Remove Sticky
								</a>
							</li>
							
						</ul>
					</div>
				</div>
			</div>
			
			<div class="user-info">
				<ul class="item-properties">
					<li class="property-user">
						<username-options cryptopian="post.Cryptopian" icon="false" avatar="true"></username-options>
					</li>								
					<li>
						in <a ng-href="{{post.Parent.Url}}forum" class="link-forum">{{post.Parent.Name}} Forum</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="timeline-content">
			<p ng-bind-html="post.Body | cutText:false:140  | parseUrlFilter:'_blank'" ng-if="post.Sticky==true"></p>
			<p ng-bind-html="post.Body | cutText:false:140" ng-if="post.Sticky==false"></p>
		</div>
		<div class="footer">
			<div class="item-time pull-left">
				<span class="entry-time" title="{{DateParsing.formatLongDate(post.Timestamp)}}">
					<span class="fa fa-clock-o"></span> {{DateParsing.formatFromNow(post.Timestamp)}}
				</span>
			</div>				
			<div class="forum-action forum-action-dislike pull-right">
				<div ng-hide="post.Actions.Disagree.Involved">
					<a href="" ng-click="postDisagreeClick()" class="link-dislike"><span class="fa fa-thumbs-o-down text-red"></span> <span class="action-text">Disagree</span></a>
					<a href="" ng-click="showDisagreeCryptopians()" class="counter-action"><span class="">{{post.Actions.Disagree.Total}}</span></a>
				</div>
				<div ng-show="post.Actions.Disagree.Involved" class="already-disagreed">
				  <a href="" ng-click="postDisagreeClick()" class="link-dislike"><span class="fa fa-thumbs-down text-red"></span> <span class="action-text">Disagree</span></a>
				  <a href="" ng-click="showDisagreeCryptopians()" class="counter-action"><span class="">{{post.Actions.Disagree.Total}}</span></a>
				</div>
			</div>
			<div class="forum-action forum-action-like pull-right">
				<div ng-hide="post.Actions.Agree.Involved">
					<a href="" ng-click="postAgreeClick()" class="link-like"><span class="fa fa-thumbs-o-up text-green"></span> <span class="action-text">Agree</span></a> 
					<a href="" ng-click="showAgreeCryptopians()" class="counter-action"><span class="">{{post.Actions.Agree.Total}}</span></a>
				</div>
				<div ng-show="post.Actions.Agree.Involved" class="already-liked">
				  <a href="" ng-click="postAgreeClick()" class="link-like"><span class="fa fa-thumbs-up text-green"></span> <span class="action-text">Agree</span></a>
				  <a href="" ng-click="showAgreeCryptopians()" class="counter-action "><span class="">{{post.Actions.Agree.Total}}</span></a>
				</div>
			</div>
	
			<div class="forum-info pull-right">
				<a href="{{post.Parent.Url}}post/p_{{post.Id}}" class=" btn-comments-more "><i class="fa fa-reply"></i> Reply <span ng-show="post.Actions.Comment.Total>0" class="counter-action">{{post.Actions.Comment.Total}}</span></a>
			</div>					
		</div>
	</div>
</div>			
</script>
<div class="panel panel-forum">
<div class="panel-heading"><span class="fa fa-comment"></span> Trending posts</div>
<div class="panel-body">
<forum-container-no-new></forum-container-no-new>
</div>
</div>
</div>
</div>
</div>
<script type="text/ng-template" id="streamers/toplist.html">
	<div class="panel panel-ranking">
		<div class="panel-body">
			<table class="table table-rankings table-hover">
				<thead>
				  <tr>
					 <td class="text-left">#</td>
					 <td class="text-left">Coin Name</td>
					 <td class="text-right hidden-xs hidden-sm">Price</td>
					 <td class="text-right">Vol. 24H</td>
					 <td class="text-right hidden-xs hidden-sm">Vol. 24H</td>
					 <td class="text-right">% ch</td>
				  </tr>
				</thead>
				<tbody>
					<tr ng-repeat="(key,item) in items">
						<td class="text-left">{{key+1}}</td>
						<td class="text-left">
							<a ng-href="/coins/{{connection.data[key].DATA.FROMSYMBOL.toLowerCase()}}/overview/{{connection.data[key].DATA.TOSYMBOL}}" title="{{tname}} : {{connection.data[key].DATA.TOSYMBOL}} - {{connection.data[key].DATA.FROMSYMBOL}}">
								{{connection.data[key].DATA.FROMSYMBOL}}
							</a>
						</td>
						<td class="text-right hidden-xs hidden-sm">
							<span class="price-current" ng-class="{'highlight-up':connection.data[key].VISUAL.PRICEUP, 'highlight-down':connection.data[key].VISUAL.PRICEDOWN, 'highlight-unchanged':connection.data[key].VISUAL.PRICEUNCHANGED}">
								{{connection.data[key].DISPLAY.PRICE}}
							</span>
						</td>
						<td class="text-right">
							<span ng-class="{'highlight-text':connection.data[key].VISUAL.VOLUME24HOURTO}">
								{{connection.data[key].DISPLAY.VOLUME24HOURTO}}
							</span>
						</td>
						<td class="text-right hidden-xs hidden-sm">
							<span ng-class="{'highlight-text':connection.data[key].VISUAL.VOLUME24HOUR}">
								{{connection.data[key].DISPLAY.VOLUME24HOUR}}
							</span>
						</td>
						<td class="text-right">
							<span ng-class="{'text-bold':connection.data[key].VISUAL.CHANGE24HOUR,'up-text':connection.data[key].DISPLAY.CHANGE24HOURUP, 'down-text':connection.data[key].DISPLAY.CHANGE24HOURDOWN, 'unchanged-text':connection.data[key].DISPLAY.CHANGE24HOURUNCHANGED}">
								{{connection.data[key].DISPLAY.CHANGEPCT24HOUR}}%
							</span>
						</td>
				  </tr>
			   </tbody>
			</table>
		</div>
	</div>
</script>
<div class="section section-statistics">
<div class="featured-icon"><span class="fa fa-line-chart"></span></div>
<h2 class="heading">We have Toplists</h2>
<div class="colored-line"></div>
<div class="subtitle col-md-8 col-centered">
<b><i>CryptoCompare</i></b> is an interactive platform where you can discuss the latest Crypto trends and monitor all markets streaming in real time
</div>
<div class="col-md-7 col-centered">
<uib-tabset justified="true" class="box-rankings">
<uib-tab heading="BTC Vol. 24H">
<toplist items='[{"Element":"5~CCCAGG~ETH~BTC","Score":17290.421536388418,"Value":17290.421536388418,"Key":"5~CCCAGG~ETH~BTC"},{"Element":"5~CCCAGG~BCH~BTC","Score":9271.9756115546788,"Value":9271.9756115546788,"Key":"5~CCCAGG~BCH~BTC"},{"Element":"5~CCCAGG~ETC~BTC","Score":3264.0265852316716,"Value":3264.0265852316716,"Key":"5~CCCAGG~ETC~BTC"},{"Element":"5~CCCAGG~DASH~BTC","Score":3049.8301666026173,"Value":3049.8301666026173,"Key":"5~CCCAGG~DASH~BTC"},{"Element":"5~CCCAGG~XVC~BTC","Score":3046.1827373499982,"Value":3046.1827373499982,"Key":"5~CCCAGG~XVC~BTC"}]' tname='Top 5 Volume 24H'></toplist>
</uib-tab>
<uib-tab heading="CNY Vol. 24H">
<toplist items='[{"Element":"5~CCCAGG~BTC~CNY","Score":9228517.04819242,"Value":9228517.04819242,"Key":"5~CCCAGG~BTC~CNY"},{"Element":"5~CCCAGG~TIX~CNY","Score":277239.431170883,"Value":277239.431170883,"Key":"5~CCCAGG~TIX~CNY"},{"Element":"5~CCCAGG~ZRX~CNY","Score":0.0,"Value":0.0,"Key":"5~CCCAGG~ZRX~CNY"},{"Element":"5~CCCAGG~ZMC~CNY","Score":0.0,"Value":0.0,"Key":"5~CCCAGG~ZMC~CNY"},{"Element":"5~CCCAGG~ZET~CNY","Score":0.0,"Value":0.0,"Key":"5~CCCAGG~ZET~CNY"}]' tname='Top 5 Volume 24H'></toplist>
</uib-tab>
<uib-tab heading="USD Vol. 24H">
<toplist items='[{"Element":"5~CCCAGG~BTC~USD","Score":709627972.8101666,"Value":709627972.8101666,"Key":"5~CCCAGG~BTC~USD"},{"Element":"5~CCCAGG~BCH~USD","Score":69417903.907777324,"Value":69417903.907777324,"Key":"5~CCCAGG~BCH~USD"},{"Element":"5~CCCAGG~ETH~USD","Score":64140048.040912315,"Value":64140048.040912315,"Key":"5~CCCAGG~ETH~USD"},{"Element":"5~CCCAGG~ETC~USD","Score":32526519.275288735,"Value":32526519.275288735,"Key":"5~CCCAGG~ETC~USD"},{"Element":"5~CCCAGG~LTC~USD","Score":20779096.20988461,"Value":20779096.20988461,"Key":"5~CCCAGG~LTC~USD"}]' tname='Top 5 Volume 24H'></toplist>
</uib-tab>
<uib-tab heading="% Chg. Top">
<toplist items='[{"Element":"5~CCCAGG~CURE~BTC","Score":175.82307948121053,"Value":175.82307948121053,"Key":"5~CCCAGG~CURE~BTC"},{"Element":"5~CCCAGG~JIO~BTC","Score":68.269230769230774,"Value":68.269230769230774,"Key":"5~CCCAGG~JIO~BTC"},{"Element":"5~CCCAGG~DAZZ~BTC","Score":49.999999999999986,"Value":49.999999999999986,"Key":"5~CCCAGG~DAZZ~BTC"},{"Element":"5~CCCAGG~BYC~BTC","Score":37.124337065409549,"Value":37.124337065409549,"Key":"5~CCCAGG~BYC~BTC"},{"Element":"5~CCCAGG~R~BTC","Score":35.802469135802475,"Value":35.802469135802475,"Key":"5~CCCAGG~R~BTC"}]' tname='Top 5 Percentage Change 24H'></toplist>
</uib-tab>
<uib-tab heading="% Chg. Bottom">
<toplist items='[{"Element":"5~CCCAGG~SPR~BTC","Score":-25.84116140051238,"Value":-25.84116140051238,"Key":"5~CCCAGG~SPR~BTC"},{"Element":"5~CCCAGG~AEON~BTC","Score":-25.645969919012735,"Value":-25.645969919012735,"Key":"5~CCCAGG~AEON~BTC"},{"Element":"5~CCCAGG~XGOX~BTC","Score":-24.505928853754941,"Value":-24.505928853754941,"Key":"5~CCCAGG~XGOX~BTC"},{"Element":"5~CCCAGG~GRS~BTC","Score":-22.641350210970465,"Value":-22.641350210970465,"Key":"5~CCCAGG~GRS~BTC"},{"Element":"5~CCCAGG~ETN~BTC","Score":-20.853858784893276,"Value":-20.853858784893276,"Key":"5~CCCAGG~ETN~BTC"}]' tname='Botom 5 Percentage Change 24H'></toplist>
</uib-tab>
</uib-tabset>
</div>
</div>
<div class="section section-guides">
<div class="featured-icon"><span class="fa fa-book"></span></div>
<h2 class="heading">We have guides</h2>
<div class="colored-line"></div>
<div class="subtitle col-md-8 col-centered">
<b><i>CryptoCompare</i></b> is the perfect place to learn about crypto currencies and start to
understand some of the fundamental concepts behind the blockchain.
</div>
<div class="col-md-12">
<div class="col-md-6">
<div class="item item-wide item-special">
<div class="item-thumb">
<a href='/coins/guides/what-is-monaize/' title="What is Monaize?">
<span class="special-text">Sponsored</span>
<img data-cfsrc="/media/12318336/mnz.png?width=350" class="img-responsive" title="What is Monaize?" style="display:none;visibility:hidden;"><noscript><img src="/media/12318336/mnz.png?width=350" class="img-responsive" title="What is Monaize?"></noscript>
</a>
</div>
<div class="item-content">
<div class="item-title">
<h3><a href='/coins/guides/what-is-monaize/' title="What is Monaize?">What is Monaize?</a></h3>
</div>
<p>Monaize, an e-banking platform, has devised a platform where this new class of workers can address all of their banking needs. Through an innovative KYB (Know Your Business) onboarding process, Monaize is able to provide freelancers with instant acce&hellip;</p>
<div class="item-actions">
<a href="/coins/guides/what-is-monaize/" title="What is Monaize?">Read all about What is Monaize?</a>
</div>
</div>
</div>
</div>
<div class="col-md-6">
<div class="item item-wide item-special">
<div class="item-thumb">
<a href='/coins/guides/what-is-the-elements-coin/' title="What is the Elements Coin">
<span class="special-text">Sponsored</span>
<img data-cfsrc="/media/12318308/elm.png?width=350" class="img-responsive" title="What is the Elements Coin" style="display:none;visibility:hidden;"><noscript><img src="/media/12318308/elm.png?width=350" class="img-responsive" title="What is the Elements Coin"></noscript>
</a>
</div>
<div class="item-content">
<div class="item-title">
<h3><a href='/coins/guides/what-is-the-elements-coin/' title="What is the Elements Coin">What is the Elements Coin</a></h3>
</div>
<p>The Elements coin is a blockchain-based cryptocurrency created to tackle the aforementioned problems in loyalty programs. A simple concept, the Elements project can impact the way these programs work by introducing a universal loyalty currency that c&hellip;</p>
<div class="item-actions">
<a href="/coins/guides/what-is-the-elements-coin/" title="What is the Elements Coin">Read all about What is the Elements Coin</a>
</div>
</div>
</div>
</div>
<div class="col-md-6">
<div class="item item-wide item-special">
<div class="item-thumb">
<a href='/coins/guides/cointed-a-bridge-between-the-cryptocurrency-and-the-real-world/' title="Cointed: a Bridge Between the Cryptocurrency and the Real World">
<span class="special-text">Sponsored</span>
<img data-cfsrc="/media/14761906/cointed_seo.png?width=350" class="img-responsive" title="Cointed: a Bridge Between the Cryptocurrency and the Real World" style="display:none;visibility:hidden;"><noscript><img src="/media/14761906/cointed_seo.png?width=350" class="img-responsive" title="Cointed: a Bridge Between the Cryptocurrency and the Real World"></noscript>
</a>
</div>
<div class="item-content">
<div class="item-title">
<h3><a href='/coins/guides/cointed-a-bridge-between-the-cryptocurrency-and-the-real-world/' title="Cointed: a Bridge Between the Cryptocurrency and the Real World">Cointed: a Bridge Between the Cryptocurr&hellip;</a></h3>
</div>
<p>Cryptocurrencies are here to stay, that’s for sure! The technology behind it is too useful to be looked over, so what is keeping it from mass adoption? There is no single and simple answer, the main reason might be the inherent volatility of cryptocu&hellip;</p>
<div class="item-actions">
<a href="/coins/guides/cointed-a-bridge-between-the-cryptocurrency-and-the-real-world/" title="Cointed: a Bridge Between the Cryptocurrency and the Real World">Read all about Cointed: a Bridge Between the Cryptocurrency and the Real World</a>
</div>
</div>
</div>
</div>
<div class="col-md-6">
<div class="item item-wide item-special">
<div class="item-thumb">
<a href='/coins/guides/caviar-crypto-and-real-estate-in-one-token/' title="Caviar: Crypto And Real Estate In One Token">
<span class="special-text">Sponsored</span>
<img data-cfsrc="/media/12318328/cav.png?width=350" class="img-responsive" title="Caviar: Crypto And Real Estate In One Token" style="display:none;visibility:hidden;"><noscript><img src="/media/12318328/cav.png?width=350" class="img-responsive" title="Caviar: Crypto And Real Estate In One Token"></noscript>
</a>
</div>
<div class="item-content">
<div class="item-title">
<h3><a href='/coins/guides/caviar-crypto-and-real-estate-in-one-token/' title="Caviar: Crypto And Real Estate In One Token">Caviar: Crypto And Real Estate In One To&hellip;</a></h3>
</div>
<p>In order to solve this and reduce the volatility that's inherent to cryptocurrency, Caviar created a dual-purpose token and crowdfunding platform that is investing in cryptocurrencies and also in the real estate market. The company’s mission is to pr&hellip;</p>
<div class="item-actions">
<a href="/coins/guides/caviar-crypto-and-real-estate-in-one-token/" title="Caviar: Crypto And Real Estate In One Token">Read all about Caviar: Crypto And Real Estate In One Token</a>
</div>
</div>
</div>
</div>
</div>
</div>


<script type="text/ng-template" id="lists/featured-review-list.html">
	<div class="section section-reviews">
		<div class="featured-icon"><span class="fa fa-thumbs-up"></span></div>			
		<h2 class="heading">We have reviews</h2>
		<div class="colored-line"></div>
		<div class="subtitle col-md-8 col-centered">
			<b><i>CryptoCompare</i></b> helps you decide what's best
		</div>	
		<div class="col-md-12">
			<div class="front-reviews">
				<div class="col-md-4">
					<div class="heading-reviews">
						<h3><span class="for">for</span> Mining equipment</h3>
					</div>
					<featured-review-item ng-repeat="(key,item) in ::miningEquipment" item="item">
					</featured-review-item>
				</div>
				<div class="col-md-4">
					<div class="heading-reviews heading-wallets">
						<h3><span class="for">for</span> Wallets</h3>
					</div>
					<featured-review-item ng-repeat="(key,item) in ::wallets" item="item">
					</featured-review-item>
				</div>
				<div class="col-md-4">
					<div class="heading-reviews heading-exchanges">
						<h3><span class="for">for</span> Exchanges</h3>
					</div>	
					<featured-review-item ng-repeat="(key,item) in ::exchanges" item="item">
					</featured-review-item>
				</div>
			</div>
		</div>
	</div>	
</script>
<script type="text/ng-template" id="lists/featured-review-item.html">
	<div class="item item-wide">
		<div class="item-thumb">	
			<a ng-href="{{item.Url}}" ng-title="What is {{item.Name}}? Reviews and comparison.">
				<img ng-src='{{item.LogoUrl}}?anchor=center&mode=crop&width=100&height=100' class="img-responsive">
			</a>
		</div>
		<div class="item-content">
			<div class="item-title">							
				<h3>
					<a ng-href="{{item.Url}}" ng-title="What is {{item.Name}}? Reviews and comparison.">
						{{item.Name}}
					</a>
				</h3>
			</div>
			<div class="review-stuff" ng-show="item.Rating['TotalUsers']>0">
				<div class="review-stars" 
					uib-popover-template="'general/popover-rating.html'"
					popover-title="{{item.Rating['Avg']}} out of 5 stars" 
					popover-trigger="mouseenter" 
					popover-placement="bottom">
						<uib-rating ng-model="item.Rating['Avg']" max="5" readonly="true"></uib-rating>
				</div>
			</div>
			<p>{{item.Description}}</p>
			<div class="item-actions">
				<a ng-href="{{item.Url}}" ng-title="What is {{item.Name}}? Reviews and comparison.">Read more...</a>
			</div>
		</div>							
	</div>
</script>

<script>
	/*Services*/
	angular.module('ccc-app').factory('featuredReviewData', [function featuredReviewDataFactory() {
		var featuredReviewsData = [];
		return{
			setFeaturedReviewData : function(initialData){
				featuredReviewsData = initialData.FeaturedReviews;
			},
			addReviews: function(apiResponse){
				var reviewData = apiResponse['Ratings'];
				for ( var i=0,length=featuredReviewsData.length;i<length;i++) {
					featuredReviewsData[i]["Rating"] = reviewData[featuredReviewsData[i]['Id']];
				};
			},
			getMiningEquipment: function(){
				return featuredReviewsData.filter(function(featuredReview){
					return featuredReview.Type=="MiningEquipment";
				});
			},
			getWallets: function(){
				return featuredReviewsData.filter(function(featuredReview){
					return featuredReview.Type=="Wallet";
				});
			},
			getExchanges: function(){
				return featuredReviewsData.filter(function(featuredReview){
					return featuredReview.Type=="Exchange";
				});
			}
			
		};
	}]);
				
	/*Controllers*/
	angular.module('ccc-app').controller('featuredReviewListCtrl',[
		'$scope','featuredReviewData',
		function($scope,featuredReviewData){
			$scope.miningEquipment = featuredReviewData.getMiningEquipment();
			$scope.wallets = featuredReviewData.getWallets();
			$scope.exchanges = featuredReviewData.getExchanges();
		}
	]);

	angular.module('ccc-app').controller('featuredReviewItemCtrl',[
		'$scope',
		function($scope){
		}
	]);

	/*Directives*/
	angular.module('ccc-app').directive('featuredReviewList', function() {
	  return {
		  restrict: 'E',
		  templateUrl: 'lists/featured-review-list.html',
		  controller: 'featuredReviewListCtrl',
		  scope:{
		  },
		  link:function(scope,element,attrs){
		  }
	  };
	});

	angular.module('ccc-app').directive('featuredReviewItem', function() {
	  return {
		  restrict: 'E',
		  templateUrl: 'lists/featured-review-item.html',
		  controller: 'featuredReviewItemCtrl',
		  scope:{
			  item: "="
		  },
		  link:function(scope,element,attrs){
		  }
	  };
	});
</script>

<script>
		angular.module('ccc-app').run(function(featuredReviewData){
			featuredReviewData.setFeaturedReviewData({"Response":"Success","Message":"Wallets succesfully returned","FeaturedReviews":[{"Id":"13228","UrlName":"gemini","Url":"/exchanges/gemini/reviews","LogoUrl":"/media/20736/gemini.png","Name":"Gemini","Description":"Gemini Exchange is aptly named after its two founders the Winklevoss twins. The exchange is based in New York. In all perhaps one of the most consider...","Type":"Exchange"},{"Id":"2438","UrlName":"poloniex","Url":"/exchanges/poloniex/reviews","LogoUrl":"/media/19577/poloniex.png","Name":"Poloniex","Description":"Poloniex is a pure crypto to crypto exchange based in the United States. With a grand redesign in early 2015 the site has added a wealth of features t...","Type":"Exchange"},{"Id":"2431","UrlName":"bitstamp","Url":"/exchanges/bitstamp/reviews","LogoUrl":"/media/9350794/bitstamp1.png","Name":"Bitstamp","Description":"Bitstamp is run from the United Kingdom and is one of the most popular fiat to Bitcoin exchanges. Bitstamp only allows for one exchange pair of USD to...","Type":"Exchange"},{"Id":"2434","UrlName":"bittrex","Url":"/exchanges/bittrex/reviews","LogoUrl":"/media/19557/bittrex.png","Name":"Bittrex","Description":"Bittrex is one of the larger crypto to crypto exchanges offering a large number of trading pairs into bitcoin. The exchange does have a very high turn...","Type":"Exchange"},{"Id":"2440","UrlName":"bitfinex","Url":"/exchanges/bitfinex/reviews","LogoUrl":"/media/1383638/bitfinex.png","Name":"Bitfinex","Description":"BitFinex offers three main functions - it is a bitcoin, litecoin and dashcoin to fiat exchange, a margin trading exchange and a liquidity provider. Al...","Type":"Exchange"},{"Id":"2493","UrlName":"coinbase","Url":"/exchanges/coinbase/reviews","LogoUrl":"/media/19566/coinbase.png","Name":"Coinbase","Description":"Coinbase offer USD to BTC trading and have publicly stated their plans to add other pairs as and when banking arrangements in other jurisdictions are ...","Type":"Exchange"},{"Id":"24002","UrlName":"exodus","Url":"/wallets/exodus/","LogoUrl":"/media/351280/exodus.png","Name":"Exodus","Description":"Exodus is a multi-cryptocurrency wallet that boasts an easy-to-use UI. You can keep your Aragon, Augur, BAT, Bitcoin, Bitcoin Cash, Civic, Dash, Decre...","Type":"Wallet"},{"Id":"250057","UrlName":"lykkewallet","Url":"/wallets/lykkewallet/","LogoUrl":"/media/9350777/lkk.png","Name":"LykkeWallet","Description":"Lykke Wallet is a key element of the Lykke trading ecosystem. The Lykke Wallet iOS and Android apps make it simple for you to trade digital currencies...","Type":"Wallet"},{"Id":"352643","UrlName":"zumminer","Url":"/wallets/zumminer/","LogoUrl":"/media/12318424/zumminer.png","Name":"Zumminer","Description":"Zumminer is a centralized complex of popular cryptocurrency tools. The Zumminer multi-cryptocurrency wallet allows users to send, receive, store, and ...","Type":"Wallet"},{"Id":"6460","UrlName":"airbitz-bitcoin-wallet","Url":"/wallets/airbitz-bitcoin-wallet/","LogoUrl":"/media/20582/airbitz.png","Name":"Airbitz Bitcoin Wallet","Description":"The Airbitz mobile Bitcoin wallet is a decentralized, secure, and backed up Bitcoin wallet that provides true financial autonomy & privacy for users. ...","Type":"Wallet"},{"Id":"12297","UrlName":"ethereum-wallet-dapp","Url":"/wallets/ethereum-wallet-dapp/","LogoUrl":"/media/20713/etehreum_wallet.png","Name":"Ethereum Wallet DApp","Description":"The Ethereum Dapp Wallet allows you to make two kinds of wallets - a simple wallet and a multisig wallet. The wallet runs on top of a full node so, be...","Type":"Wallet"},{"Id":"2497","UrlName":"blockchain-wallet","Url":"/wallets/blockchain-wallet/","LogoUrl":"/media/19467/blockchain.png","Name":"Blockchain Wallet","Description":"Blockchain is probably the most popular wallet today. The wallet is extremely intuitive and easy to use. The Company does store your wallet on their ...","Type":"Wallet"},{"Id":"137365","UrlName":"nvidia-geforce-gtx-1080-ti","Url":"/mining/nvidia/nvidia-geforce-gtx-1080-ti/","LogoUrl":"/media/1383573/geforce-gtx-1080ti.png","Name":"nVidia Geforce GTX 1080 TI","Description":"The GeForce® GTX 1080 Ti is NVIDIA's new flagship gaming GPU, based on the NVIDIA Pascal™ architecture. The latest addition to the ultimate gaming pla...","Type":"MiningEquipment"},{"Id":"15760","UrlName":"gpushack-hd-7950","Url":"/mining/gpushack/gpushack-hd-7950/","LogoUrl":"/media/350599/gpushack_hd_7950.jpg","Name":"gpuShack HD 7950","Description":"AMD Radeon HD 7950 - 20MH/s Ethereum mining. Combine multiple GPUs and build your own mining computer / farm. Check out the profitability from using t...","Type":"MiningEquipment"},{"Id":"228120","UrlName":"pandaminer-b5-plus","Url":"/mining/pandaminer/pandaminer-b5-plus/","LogoUrl":"/media/1384037/pandaminer-b5-plus.jpg","Name":"PandaMiner B5 Plus","Description":"This is one of the GPU-integrated miners by PandaMiner which uses RX460 GPUs and supports mining for multiple altcoins, including ETH and Zcash. Shipp...","Type":"MiningEquipment"},{"Id":"15762","UrlName":"gpushack-r9-270x","Url":"/mining/gpushack/gpushack-r9-270x/","LogoUrl":"/media/350599/gpushack_hd_7950.jpg","Name":"gpuShack R9 270X","Description":"AMD Radeon R9 270X - 16MH/s Ethereum mining. Combine multiple GPUs and build your own mining computer / farm. Check out the profitability from using t...","Type":"MiningEquipment"},{"Id":"10980","UrlName":"antminer-s7-miner","Url":"/mining/bitmain/antminer-s7-miner/","LogoUrl":"/media/20703/bitmain-s7-miner.jpg","Name":"AntMiner S7 Miner","Description":"The Bitmain Antminer S7 is the latest addition from the most popular Bitcoin Mining provider. Using their new BM1385 16nm chip design.","Type":"MiningEquipment"},{"Id":"16063","UrlName":"radeon-r9-290x-tri-x-ethereum-mining","Url":"/mining/sapphire/radeon-r9-290x-tri-x-ethereum-mining/","LogoUrl":"/media/350671/radeon-r9-390x-tri-x-ethereum-mining.png","Name":"Radeon R9 290x Tri-X Ethereum Mining","Description":"The Radeon R9 290x Tri-X graphics card mining profitability ratios, payback period for ETH mining and annual return. All based on live network hash ra...","Type":"MiningEquipment"}],"Type":100})
			featuredReviewData.addReviews({"Response":"Success","Message":"Ratings succesfully returned","Ratings":{"2431":{"One":30,"Two":2,"Three":3,"Four":12,"Five":27,"Avg":3.1,"TotalUsers":74},"2434":{"One":61,"Two":5,"Three":8,"Four":14,"Five":66,"Avg":3.1,"TotalUsers":154},"2438":{"One":274,"Two":28,"Three":16,"Four":28,"Five":52,"Avg":1.9,"TotalUsers":398},"2440":{"One":8,"Two":2,"Three":1,"Four":1,"Five":12,"Avg":3.3,"TotalUsers":24},"2493":{"One":27,"Two":6,"Three":9,"Four":12,"Five":23,"Avg":3.0,"TotalUsers":77},"2497":{"One":7,"Two":1,"Three":6,"Four":9,"Five":16,"Avg":3.7,"TotalUsers":39},"6460":{"One":1,"Two":1,"Three":4,"Four":3,"Five":11,"Avg":4.1,"TotalUsers":20},"10980":{"One":0,"Two":0,"Three":0,"Four":1,"Five":1,"Avg":3.2,"TotalUsers":2},"12297":{"One":5,"Two":2,"Three":3,"Four":3,"Five":8,"Avg":3.3,"TotalUsers":21},"13228":{"One":20,"Two":1,"Three":1,"Four":6,"Five":13,"Avg":2.8,"TotalUsers":41},"15760":{"One":1,"Two":1,"Three":3,"Four":0,"Five":3,"Avg":3.2,"TotalUsers":8},"15762":{"One":0,"Two":0,"Three":1,"Four":1,"Five":1,"Avg":3.2,"TotalUsers":3},"16063":{"One":0,"Two":0,"Three":2,"Four":0,"Five":4,"Avg":3.4,"TotalUsers":6},"24002":{"One":17,"Two":3,"Three":15,"Four":49,"Five":181,"Avg":4.4,"TotalUsers":265},"137365":{"One":0,"Two":0,"Three":1,"Four":1,"Five":11,"Avg":4.2,"TotalUsers":13},"228120":{"One":1,"Two":0,"Three":0,"Four":0,"Five":0,"Avg":2.9,"TotalUsers":1},"250057":{"One":0,"Two":0,"Three":0,"Four":0,"Five":0,"Avg":0,"TotalUsers":0},"352643":{"One":0,"Two":0,"Three":0,"Four":0,"Five":0,"Avg":0,"TotalUsers":0}},"Type":100});
		});
	</script>

<featured-review-list></featured-review-list>
<script type="application/ld+json">
		{ "@context" : "http://schema.org",
		  "@type" : "Organization",
		  "url" : "https://www.cryptocompare.com/",
		  "logo": "https://www.cryptocompare.com/media/20567/cc-logo-vert.png",
		  "name": "Crypto Compare",
		  "foundingDate":"28-10-2014",
		  "description": "We bring you all the data in the world of crypto currencies and Bitcoin in an easily digestible value added format and we give you the tools you need to make that decision. Join the discussion on our active forum, get daily market updates and gain access to the best reviews in the cryptocurrency sector.",
		  "address": {
			"@type": "PostalAddress",
			"addressLocality": "London, UK",
			"postalCode": "W6 8QS",
			"streetAddress": "18 Crammond Close"
		  },
		  "founders":[
			{ "@type" : "Person",
			  "email" : "vcealicu@cryptocompare.com",
			  "name" : "Vlad Cealicu",
			  "jobTitle": "CTO",
			  "url": "https://www.cryptocompare.com/about-us/#meet-the-team",
			  "image" : "https://www.cryptocompare.com/media/20536/10599380_896682147025776_2428792704949847123_n.jpg"
			},
			{ "@type" : "Person",
			  "email" : "chayter@cryptocompare.com",
			  "name" : "Charles Hayter",
			  "jobTitle": "CEO",
			  "url": "https://www.cryptocompare.com/about-us/#meet-the-team",
			  "image" : "https://www.cryptocompare.com/media/20539/chayter-profile.png"
			}
		  ],
		  "contactPoint" : [
			{ "@type" : "ContactPoint",
			  "email" : "info@cryptocompare.com",
			  "url" : "https://www.cryptocompare.com/",
			  "contactType" : "customer service"
			} ] ,
		  "sameAs" : [ 
			"https://www.facebook.com/cryptocompare",
			"https://twitter.com/CryptoCompare",
			"https://plus.google.com/+Cryptocomparecom/posts"
		  ]
		}
	</script>
</div>
</div>
<div class="footer" ng-controller="ContactUsFooterCtrl">
<div class="container">
<div class="row">
<div class="col-md-2 col-sm-6 col-xs-6 col-footer">
<div class="nav-panel">
<div class="nav-header"><h4>Our company</h4></div>
<ul class="nav nav-pills">
<li role="presentation" class=""><a href="/about-us/">About us</a></li>
<li role="presentation" class=""><a href="/about-us/timeline/">Our Timeline</a></li>
<li role="presentation"><a href="/privacy-policy/">Privacy policy</a></li>
<li role="presentation"><a href="/terms-conditions/">Terms &amp; Conditions</a></li>
<li role="presentation"><a href="/website-disclaimer/">Website disclaimer</a></li>
</ul>
</div>
</div>
<div class="col-md-2 col-sm-6 col-xs-6 col-footer panel-min-height">
<div class="nav-panel">
<div class="nav-header"><h4>Marketing</h4></div>
<ul class="nav nav-pills">
<li role="presentation"><a href="/advertise/">Advertise with us</a></li>
<li role="presentation" class=""><a href="/email-updates/daily/2017/november/03/">Latest Newsletter</a></li>
<li role="presentation" class=""><a href="/api/external/newsletter/">Newsletter RSS</a></li>
<li role="presentation" class=""><a href="https://drive.google.com/open?id=0B3isfML9O09eMHQ2dGFPOHBSYlU" target="_blank">Submit Content</a></li>
<li role="presentation" class=""><a href="https://docs.google.com/forms/d/e/1FAIpQLSeKRAOEI_kYWH-b_QKVPMCGS-8Oi9Lktarty4n3-9Ri9IwXpQ/viewform" target="_blank">Beta test our app</a></li>
</ul>
</div>
</div>
<div class="col-md-2 col-sm-6 col-xs-6 col-footer">
<div class="nav-panel">
<div class="nav-header"><h4>Developers</h4></div>
<ul class="nav nav-pills">
<li role="presentation"><a href="/dev/widget/wizard/"><i class="fa fa-space-shuttle"></i> Widgets</a></li>
<li role="presentation"><a href="/api/"><i class="fa fa-code"></i> API</a></li>
<li role="presentation"><a href="" ng-click="switchLights()"><i class="fa fa-lightbulb-o"></i> Turn Lights {{LightsStatus}}</a></li>
</ul>
</div>
</div>
<div class="col-md-2 col-sm-6 col-xs-6 col-footer">
<div class="nav-panel">
<div class="nav-header"><h4>Get in touch</h4></div>
<ul class="nav nav-pills ng-scope">
<li role="presentation"><a href="" ng-click="showTipUs()">Tip CryptoCompare</a></li>
<li role="presentation"><a href="" ng-click="sendFeedback()">Send feedback</a></li>
<li role="presentation"><a href="" ng-click="contactUs()">Contact Us</a></li>
</ul>
</div>
</div>
<div class="col-md-4 col-sm-12 col-xs-12" style="margin-top: 0px;">
<ul class="soc">
<li><a class="fa fa-twitter" href="https://twitter.com/CryptoCompare" target="_blank"></a></li>
<li><a class="fa fa-facebook" href="https://www.facebook.com/cryptocompare" target="_blank"></a></li>
<li><a class="fa fa-google" href="https://plus.google.com/+Cryptocomparecom/posts" target="_blank"></a></li>
<li><a class="fa fa-medium" href="https://blog.cryptocompare.com/" target="_blank"></a></li>
<li><a target="_blank" href="http://gitter.im/CryptoCompare/Lobby" target="_blank"><img data-cfsrc="/media/351576/fa-gitter.png" style="display:none;visibility:hidden;" /><noscript><img src="/media/351576/fa-gitter.png" /></noscript></a></li>
</ul>
<div class="nav-panel clearfix">
<ul class="nav nav-pills nav-centered">
<li role="presentation"><a href="/forum/#/latest-posts"> <i class="fa fa-user"></i> <span class="footer-cryptopains-count">336,891</span> registered Cryptopians</a></li>
<li role="presentation"><a href="/about-us/#meet-the-team">Made with <i class="fa fa-heart love"></i> in London</a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<script type="text/ng-template" id="gModalService/showMessage.html">
	<div class="modal-header">
		<h3 class="modal-title">
			{{message.Title}}
			<button type="button" class="close" aria-label="Close" ng-click="cancel()"><span aria-hidden="true">&times;</span></button>
		</h3>
	</div>
	<div class="modal-body" ng-class="{'with-icon': message.Type }">
		<div class="modal-icon-{{message.Type}} modal-icon-big" ng-show="message.Type"><span class="fa fa-warning"></span></div>
		<p class="modal-info-text" ng-bind-html="message.Body | parseUrlFilter:'_blank'"></p>
	</div>
    <div class="modal-footer">
		<button class="btn btn-default" ng-click="cancel()">Close</button>
		<button ng-show="message.ShowOk" class="btn btn-success" ng-click="doOkAction()">Ok</button>
	</div>
</script>
<script type="text/ng-template" id="gModalService/showTipMessage.html">
	<div class="modal-header">
		<h3 class="modal-title">
			If you are enjoying our free service
			<button type="button" class="close" aria-label="Close" ng-click="cancel()"><span aria-hidden="true">&times;</span></button>
		</h3>
	</div>
	<div class="modal-body with-icon">
		<div class="modal-icon-big modal-smile-icon-big"><span class="fa fa-smile-o"></span></div>
		<div class="modal-info-text">
			<div class="modal-subheading">Put a smile on our faces and support us by donating :)</div>
			<div class="donate-coin">
				<div class="donate-coin-label"> Bitcoin (BTC)</div>
				<div class="donate-wallet-address">
					3GivtKPGMuH1FaJWh3sMEaFcfjBAyoLbrU 
					<a href="" ng-click="message.show('btcQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="!message.btcQr">Show QR Code</a>
					<a href="" ng-click="message.hide('btcQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="message.btcQr">Hide QR Code</a>
				</div>
				<div class="text-center qr-code-coin" ng-show="message.btcQr">
					<img src="/media/351698/3givtkpgmuh1fajwh-small.png"/>
				</div>
			</div>
			<div class="donate-coin">
				<div class="donate-coin-label"> Litecoin (LTC)</div>
				<div class="donate-wallet-address">
					LN4TnhNotx3SGoES7FLJL3Psh3Uo6qdgKR
					<a href="" ng-click="message.show('ltcQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="!message.ltcQr">Show QR Code</a>
					<a href="" ng-click="message.hide('ltcQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="message.ltcQr">Hide QR Code</a>
				</div>
				<div class="text-center qr-code-coin" ng-show="message.ltcQr">
					<img src="/media/20586/ln4tnhnotx3sgoes7-small.png"/>
				</div>
			</div>
			<div class="donate-coin">
				<div class="donate-coin-label"> Ethereum (ETH)</div>
				<div class="donate-wallet-address">
					0x154230ed91d1e711e56b9c0f88b5ba5fd2b0503f
					<a href="" ng-click="message.show('ethTransaction')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="!message.ethTransaction">Show Transaction Code</a>
					<a href="" ng-click="message.hide('ethTransaction')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="message.ethTransaction">Hide Transaction Code</a>
				</div>
				<div class="donate-wallet-address qr-code-coin" ng-show="message.ethTransaction">
					eth.sendTransaction({from: eth.coinbase, to: "0x154230ed91d1e711e56b9c0f88b5ba5fd2b0503f", value: web3.toWei(1, "ether"),data: web3.toHex('Love the website, good luck!')})
				</div>
			</div>
			<div class="donate-coin">
				<div class="donate-coin-label"> DigitalCash (DASH)</div>
				<div class="donate-wallet-address">
					XmUswXDP4rrCkoi84iPAZ5F2i49grTQGP5
					<a href="" ng-click="message.show('dashQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="!message.dashQr">Show QR Code</a>
					<a href="" ng-click="message.hide('dashQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="message.dashQr">Hide QR Code</a>
				</div>
				<div class="text-center qr-code-coin" ng-show="message.dashQr">
					<img src="/media/350769/xmuswxdp4rrckoi84ipaz5f2i49grtqgp5-small.jpg"/>
				</div>
			</div>
			<div class="donate-coin">
				<div class="donate-coin-label"> ZCash (ZEC)</div>
				<div class="donate-wallet-address">
					t1SB3Pr4Gi6Y7ctzd23kCT5qfLxvfAo8E4A
					<a href="" ng-click="message.show('zecQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="!message.zecQr">Show QR Code</a>
					<a href="" ng-click="message.hide('zecQr')" class="pull-right btn btn-xs btn-default hidden-xs" ng-show="message.zecQr">Hide QR Code</a>
				</div>
				<div class="text-center qr-code-coin" ng-show="message.zecQr">
					<img src="https://www.cryptocompare.com/media/1382055/t1sb3pr4gi6y7ctzd23kct5qflxvfao8e4a-small.jpg"/>
				</div>
			</div>
		</div>
	</div>
    <div class="modal-footer">
		<button class="btn btn-default" ng-click="cancel()">Close</button>
	</div>
</script>
<script type="text/ng-template" id="general/cookie-notification-popup.html">
	<div class="cookies-notification" ng-hide="cookiePopupSeen">
		<div class="cookies-wrapper">
			<div class="cookies-actions">
				<a href="/privacy-policy/" target="_blank" class="btn btn-blue btn-xs btn-speech-right cookies-learn">Learn more</a>
				<div class="cookie-notification-icon"></div>
				<a href="" ng-click="hideCookieNotification()" class="btn btn-green btn-xs btn-speech-left cookies-gotit">Got it!</a>
			</div>
			We use cookies, just to track visits to our website, we store no personal details.
		</div>
	</div>
</script>
<cookie-notification-popup></cookie-notification-popup>
<script type="text/ng-template" id="general/toast-notifications.html">
	<div class="toast-notifications">
		<div class="toast-notification-wrapper animate-slide-left toast-{{notification.Type}}" 
		ng-repeat="(index,notification) in toastNotifications.getNotifications()">
			<div class="toast-notification-actions">
				<a href="" ng-click="toastNotifications.deleteNotification(notification.Timestamp)" class="toast-close"><span class="fa fa-times"></span></a>
			</div>
			<div class="toast-title" ng-bind-html="notification.Title"></div>	
			<div class="toast-body" ng-bind-html="notification.Message"></div>
		</div>
	</div>
</script>
<toast-notifications></toast-notifications>
<script type="text/ng-template" id="general/username-options.html">
	<div class="dropdown widget-user" uib-dropdown is-open="status.isopen" ng-click="toggleDropdown($event)" aria-haspopup="true" aria-expanded="false">
		<div class="avatar-container">
			<div class="avatar" ng-show="avatar">
				<img ng-src="{{cryptopian.Avatar}}" class="user-avatar">
			</div>
			<span itemprop="name" class="username"><i class="fa fa-user" ng-show="icon"></i>{{cryptopian.Name}}</span>
			<span class="fa fa-caret-down" ng-show="caret"></span>
		</div>
		
		<ul class="uib-dropdown-menu with-arrow dropdown-right dropdown-small dropdown-widget-user">
			<li>
				<a itemprop="url" ng-href="{{profileUrl}}" ng-click="goToProfile()">
					<i class="fa fa-user-secret"></i> View <span ng-show="itIsMe">My </span>Profile
				</a>	
			</li>
			<li ng-if="userManager.isLoggedIn() && userManager.canBan()">
				<a href="" class="btn btn-ban" ng-click="banOrUnbanCryptopian()" >
					<span ng-if="!alreadyBanned"><i class="fa fa-lock"></i> Ban</span>
					<span ng-if="alreadyBanned" ><i class="fa fa-unlock"></i> Un-Ban</span>
				</a>
			</li>
			<li ng-if="userManager.isLoggedIn() && userManager.canDeleteAllForumActivity()">
				<a href="" class="btn btn-ban" ng-click="deleteAllForumActivityCryptopian()" >
					<span><i class="fa fa-trash-o"></i>Delete all Posts & Comments</span>
				</a>
			</li>			
			<li class="inmenu-follow-action" ng-show="!itIsMe">
				<a href="" class="btn" ng-click="changeFollowingStatus()" 
					ng-class="{'user-follow':!alreadyFollowing||(!followingHover&&alreadyFollowing),'user-unfollow':followingHover&&alreadyFollowing}"
					ng-mouseover="followingHover=true" 
					ng-mouseleave="followingHover=false">
						<span ng-show="!alreadyFollowing"><i class="fa fa-plus"></i> Follow</span>
						<span ng-show="alreadyFollowing" >
							<span ng-show="!followingHover"><i class="fa fa-check"></i> Following</span>
							<span ng-show="followingHover"><i class="fa fa-minus"></i> Unfollow</span>
						</span>
				</a>
			</li>
			<li ng-show="itIsMe">
				<a href="/cryptopian/">
					<i class="fa fa-cogs"></i> Edit My Profile
				</a>
			</li>		
		</ul>
	</div>
</script>
</div>
<style>

	.container-ie {
		margin: 0 auto;
		width: 820px;
	}
	.ie-error {
		overflow: hidden;
		background: #FFF;
		padding: 30px;
		margin-top: 30px;
		border: 1px solid #DDD;
	}
	.wrong-browser {
		text-align: center;
		margin-bottom: 30px;
	}
	.list-browsers {
		list-style: none;
		list-position: outside;
		margin: 0;
		padding: 0;
	}
	.list-browsers li {
		background: #EEE;
		display: inline-block;
		float: left;
		margin-right: 15px;
		height: 145px;
		width: 120px;
		padding: 10px;
		text-align: center;
	}
	.list-browsers li a {
		font-weight: bold;
	}
	.list-browsers li img {
		width: 100%;
		margin-bottom: 10px;
	}
	
</style>
<div class="container-ie">
<div id="ieError" class="ie-error">
<div class="wrong-browser">
<b>CryptoCompare</b> needs a newer browser in order to work.<br>
Please use one of the browsers bellow:
</div>
<div class="browser-selection">
<ul class="list-browsers">
<li>
<a href="http://www.firefox.com">
<img data-cfsrc="/media/20512/firefox.png" style="display:none;visibility:hidden;"><noscript><img src="/media/20512/firefox.png"></noscript><br>Firefox</a>
</li>
<li>
<a href="https://www.google.com/chrome/browser">
<img data-cfsrc="/media/20510/google_chrome_icon.png" style="display:none;visibility:hidden;"><noscript><img src="/media/20510/google_chrome_icon.png"></noscript>
Chrome
</a>
</li>
<li>
<a href="http://www.opera.com">
<img data-cfsrc="/media/20511/opera.png" style="display:none;visibility:hidden;"><noscript><img src="/media/20511/opera.png"></noscript>
Opera
</a>
</li>
<li>
<a href="http://windows.microsoft.com/en-us/internet-explorer/ie-9-worldwide-languages">
<img data-cfsrc="/media/20514/ieicon.png" style="display:none;visibility:hidden;"><noscript><img src="/media/20514/ieicon.png"></noscript>
Internet Explorer
</a>
</li>
<li>
<a href="http://filehippo.com/download_safari">
<img data-cfsrc="/media/20513/safari-logo.png" style="display:none;visibility:hidden;"><noscript><img src="/media/20513/safari-logo.png"></noscript>
Safari
</a>
</li>
</ul>
</div>
</div>
</div>
<div id="fb-root"></div>
<script> 
		window.fbAsyncInit = function() {
			 FB.init({
				appId      : '850963688259013',
				cookie     : true, 
				xfbml      : true,
				version    : 'v2.8' 
			  });
		};
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		  }(document, 'script', 'facebook-jssdk'));

		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {return;}
			js = d.createElement(s);
			js.id = id;
			js.src = "https://plus.google.com/js/client:platform.js";
			fjs.parentNode.insertBefore(js, fjs);
		})(document, 'script', 'googleplus-jssdk');
	</script>
</body>
</html>